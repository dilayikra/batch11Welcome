@isTest
public with sharing class RestApiOutboundCallout_Test {

    @isTest
    public static void getAnimalsSuccessTestUsingStaticResource(){

        /**
     * Unit Test Success Response for Animal Heroku App - GET Method
     * STATIC RESOURCE MOCK APPROACH
     * Step 1: Upload Response Body as a Static Resource
     * Step 2: Fetching Mock Response from Static Resource
     * Step 3: Link/Assosiate the Mock Response to our Unit Test context
     * Step 4: Invoking REST merthod logic
     * Step 5: Assertion Stateements
     */

        staticResourceCalloutMock mock=new staticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setStatus('OK');
        mock.setHeader('Content-Type','application/json');
        test.setMock(HttpCalloutMock.class,mock);
        
        
        
        test.startTest();
        HttpResponse mockResponse=RestApiOutboundCallout.getAnimals();
        test.stopTest();

        System.assertEquals(200, mockResponse.getStatusCode(), 'Success Response should be 200');
        System.assertNotEquals(null, mockResponse.getBody(), 'Mock Response content should match Static resource');



}

        @isTest      
        public static void getUserSuccessTestUsingCalloutMock() {
            /**
     * Unit Test Success Response Scenario for Get User callout - GET Method
     * HTTP CALLOUT MOCK RESPONSE
     * Step 1: Create a new Apex Class implementing HttpCalooutMock
     * Step 2: Inside this class we try to create HttpResponse Object
     * Step 3: Assosiate Mock Response eto our Unit Test method
     * Step 4: Invoking REST Callout
     * Step 5: System Assertion
     */

        test.setMock(HttpCalloutMock.class,new getUserCalloutMockResponse());

        test.startTest();
        HttpResponse mockResponse=RestApiOutboundCallout.getUser();
        test.stopTest();

        System.assertEquals(200,mockResponse.getStatusCode(), 'Success Response should be 200');







        

      }

      // Create Mock Response Class
    
      /*public class   implements HttpCalloutMock {
        // Implement respond Interface method
        public HttpResponse respond(HttpRequest request){
            // Create a fake Response
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setHeader('Content-Type', 'application/json');
            response.setBody('{"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}');
            return response;
        }
}*/
}




