@isTest
public with sharing class RestInboundWebService_Test {

    @testSetup
    public static void name() {

        Case testRec=new Case();
        testRec.subject='Test Case';
        testRec.description='Test Description';
        testRec.Origin='Phone';
        testRec.status='New';
        testRec.priority='High';
        insert testRec;
    
    }

    @isTest 
    public static void getCaseByIdSuccessCase() {
        Id caseId=[select id from case LIMIT 1].Id;
        RestRequest request=new RestRequest();
        request.requestURI='employer2-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/5008d00000JNZZCAA5'+caseId;

        request.httpMethod='GET';
        RestContext.Request=request;

        
        
                
                Test.startTest();
                Case testRec=RestInboundWebService.getCaseById();
        
                Test.stopTest();

                System.assertEquals(testRec.Id,caseId,'Test Case Record Id should be matching with the Webservice method result');
        
                
            
        }


        @isTest 
        public static void createSuccessTest() {
            RestRequest request=new RestRequest();
            request.requestURI='employer2-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/5008d00000JNZZCAA5';

            request.httpMethod='POST';
            RestContext.Request=request;

            
            Test.startTest();
            RestInboundWebService.createCase('Test Case #2','Test Case Description','New','High','Web');
    
            Test.stopTest();

            
            Case testRec=[select id from case where subject='Test Case #2'];
            
            System.assertEquals('Test Case #2',testRec.subject,'New Test record is Created');
        
        }

        @isTest 
        public static void deleteCaseSuccessTest() {

            Id caseId=[select id from case LIMIT 1].Id;
            RestRequest request=new RestRequest();

            request.requestURI='employer2-dev-ed.develop.my.salesforce.com/services/apexrest/InboundCaseManager/5008d00000JNZZCAA5';

            request.httpMethod='DELETE';
            RestContext.Request=request;

            

            Test.startTest();
            RestInboundWebService.deleteCase();
    
            Test.stopTest();

            list<case> testRecList=[select id from case];

            System.assertEquals(0,testRecList.size(),'Not excepting any Case Record'); 

           





            
        


        
    

}
}
    
