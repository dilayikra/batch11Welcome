@restResource(urlMapping='/InboundCaseManager/*')
global with sharing class RestInboundWebService {
    
    @HttpGet
    global static Case getCaseById() {
        RestRequest request=RestContext.request;
        system.debug('Http Request Details sent by External System '+request);
        system.debug('Endpoint'+request.requestURI);
        system.debug('Http Method '+request.httpMethod);
        system.debug('Header '+request.headers);

        String caseId=request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        System.debug('Case Record Id:'+ caseId);
        
        Case result=[Select id,description,casenumber,status,origin,subject,priority from case where Id=:caseId WITH SECURITY_ENFORCED];
        System.debug('Case Record :'+ result);

        return result;

        /*

        00D8d000008FS6P!AR4AQIU4Myd_ByYfsAIp2653G_LpPLg0NbFcuWX2kd_e0Y21EbWQGzdZJsASa9vLdfKaO75NSxw62ZcmYXNoB_wJDpUdqMtV
        employer2-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/5008d00000HIN6MAAX
        */
        
}

    
/**
	 * This Method is deleting Case record by their Salesforce Id
	 * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/5002w000003zzJxAAI
	 * HTTP Method - DELETE
	 * Create Success & Fail Response with dynmaic Status Code and Body
	 */



    @HttpDelete
    global static void deleteCase() {
        RestRequest request=RestContext.request;
        

        system.debug('Http Request Details sent by External System '+request);
        system.debug('Endpoint'+request.requestURI);
        system.debug('Http Method '+request.httpMethod);
        system.debug('Header '+request.headers);

        String caseId=request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        System.debug('Case Record Id:'+ caseId);

        list<Case> matchingresult=[Select id from case where Id=:caseId WITH SECURITY_ENFORCED ];
        RestResponse response = RestContext.response;

        if(!matchingresult.isEmpty()){
            //success scenario
            delete matchingresult[0];

            //success code for delete
            response.statusCode=204;
            response.responseBody=Blob.valueOf('Case Record was successfully deleted  :) ');
            
        }else {
            response.statusCode=404;
            response.responseBody=Blob.valueOf('Error encountered,Record does not exist! ');


            
        }
    }


    @HttpPost
    global static void createCase(string description,string status,string origin,string subject,string priority) {
        RestRequest request=RestContext.request;

        system.debug('Http Request Details sent by External System '+request);
        system.debug('Endpoint'+request.requestURI);
        system.debug('Http Method '+request.httpMethod);
        system.debug('Header '+request.headers);
        system.debug('Request Body '+request.requestBody);



        Case newRec=new Case();
        newRec.subject=subject;
        newRec.description=description;
        newRec.status=status;
        newRec.priority=priority;
        newRec.origin=origin;

        RestResponse response=new RestResponse();
        response.addHeader('Content-Type','application/json');
        PostResponseWrapper responseContent=new PostResponseWrapper();

        try {
            insert newRec;

            response.statusCode=201;
            responseContent.id=newRec.id;
            responseContent.status='Success';
            responseContent.errorMessage='';
        }
        catch (Exception ex) {

            response.statusCode=404;
            responseContent.id='';
            responseContent.status='Failure';
            responseContent.errorMessage=ex.getMessage();
            
        }


        string responseBody=Json.serialize(responseContent);
        response.responseBody=Blob.valueOf(responseBody);
    }

        public class PostResponseWrapper{
            public string id;
            public string status;
            public string errorMessage;

        }


        @HttpPatch 
        global static Case updateCaseFields() {

            RestRequest request=RestContext.request;

            


            String caseId=request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
            list<Case> existingRec=[select id from case where id=:caseId WITH SECURITY_ENFORCED] ;

            String requestJson=request.requestBody.toString();
            
            Map<String,Object> fieldValues = (Map<String,Object>) JSON.deserializeUntyped(requestJSON);

            for(string fieldName : fieldValues.keySet()){


                
                existingRec[0].put(fieldName,fieldValues.get(fieldName));



            }

            update existingRec[0];
            return existingRec[0];








            
        }



        @HttpPut
    global static void upsertCase(){
        // Get Incoming Inbound REST API Request
        RestRequest request = RestContext.Request;
        // Extract Information/Data from Request Body by deserailising JSON
        String requestBody = request.requestBody.toString();
        // Use deserialize Strict when dfealing with Wrapper class
        // Use deserilaize Untyped when dealing with Map<>String
        PutRequestWrapper requestContent = (PutRequestWrapper) JSON.deserializeStrict(requestBody, PutRequestWrapper.class);

        // Prepare Case Object record
        case newRec = new Case();
        newRec.Status = requestContent.status;
        newRec.Subject = requestContent.subject;
        newRec.Description = requestContent.description;
        newRec.Origin = requestContent.origin;
        newRec.Priority = requestContent.priority;
        if(requestContent.id != null && requestContent.id != ''){
            newRec.Id = requestContent.id;
        }

        //Prepare Response Content
        RestResponse response = RestContext.Response;
        response.addHeader('Content-Type', 'application/json');
        PostResponseWrapper responseContent = new PostResponseWrapper();

        try {
            // Upsert Operation
            upsert newRec;

            // Success Response
            response.statusCode = 201;
            responseContent.status = 'Success';
            responseContent.id = newRec.Id;
            responseContent.errorMessage = '';
        } catch (Exception ex) {
            // Error Response
            response.statusCode = 404;
            responseContent.status = 'Failure';
            responseContent.id = '';
            responseContent.errorMessage = ex.getMessage();
        }

        // Prepare Response Body in JSOn format
        String responseJSON = JSON.serialize(responseContent);
        response.responseBody = Blob.valueOf(responseJSON);
    }

    // Wrapper Class for Put Request Body Deseariliasation
    public class PutRequestWrapper {
        public String id;
        public String subject;
        public STring description;
        public String priority;
        public STring origin;
        public STring status;
    }




    /**
     * This method will be used to perform UPSERT(Insert/Update) case record by parsing all required parameters from Rest Request sent by External System
     * Incase of Upsert, if Salesforce Id is provided then it is an Update scenario. If not, it is an Insert scenario
     * Endpoint - https://abinash-panigrahi-0113-dev-ed.my.salesforce.com/services/apexrest/InboundCaseManager/
     * Http Method - PUT
     * Request Body - { "id" : "xxx", "subject" : "xxx", "description" : "xxx", "status" : "xxx", "priority" : "xxx", "origin" : "xxx" }
     * Return meaningful JSON response based on Success/Failure
     * Response Body - { 'id' : 'xxx', 'status' : 'Success/Failure', 'errorMessage' : 'xxx' }
     */
}






















