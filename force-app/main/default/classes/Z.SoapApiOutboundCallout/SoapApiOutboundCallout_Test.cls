@isTest
public with sharing class SoapApiOutboundCallout_Test {

    @IsTest
    public static void makeCalculatorCalloutSuccessTest(){
        // Assosiation of Mock response to our Unit Test method
        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutCalculatorMock());
        // Invoke Soap Api Callout scenario
        Test.startTest();
        Double result = SoupApiOutboundCallout.makeMultiplication();
        Test.stopTest();
        // System Assetion
        System.assertEquals(30.0, result, 'Mock Response returned should be matching');
    }

   @isTest
    public static void makeParkCalloutSuccessTest(){

        Test.setMock(WebServiceMock.class, new SoapApiOutboundCalloutParkMock());
        Test.startTest();
        List <String> parks =SoupApiOutboundCallout.makeParkCallout();


        Test.stopTest();

        System.assertEquals(3,parks.size());

        List<String> expectResult= new List<String>{'Park1','Park2','Park3'};
        System.assertEquals(expectResult,parks);
    }

    @isTest
    public static void makeDivideCalculatorCalloutSuccessTest() {
        test.setMock(WebServiceMock.class,new SoapApiOutboundCalloutCalculatorMock2());
        test.startTest();
        Double result=SoupApiOutboundCallout.makeDivide();
        test.stopTest();
        System.assertEquals(5.0, result, 'Mock Response returned should be matching');
        
    }

    @isTest
    public static void makeSubtractCalculatorCalloutSuccessTest() {
        test.setMock(WebServiceMock.class,new SoapApiOutboundCalloutCalculatorMock3());
        test.startTest();
        Double result=SoupApiOutboundCallout.makeSubtract();
        test.stopTest();
        System.assertEquals(26.0, result, 'Mock Response returned should be matching');
    }

    @isTest
    public static void makeAddCalculatorCalloutSuccessTest() {
        test.setMock(WebServiceMock.class,new SoapApiOutboundCalloutCalculatorMock4());
        test.startTest();
        Double result=SoupApiOutboundCallout.makeAdd();
        test.stopTest();
        System.assertEquals(21.0, result, 'Mock Response returned should be matching');


        
    }



    
    













/**
 * Implementation of Unit Test Class for SOAP API Outbound Callouts
 * Step I : To Create a new Mock Response - Apex Class which will implement WebServiceMock
 * Step II: Inside Mock Response class we will be implementing doInvoke method with bunch of predefined Method parameters
 * Step III: Initialise Response Class of SOAP Utility/Serrvice Class
 * Step IV: Pass Dummy/Fake Response values
 * Step V: Assosiate Mock Response to our Unit Test method
 * Step VI: Invoking SOAP Callout
 * Step VII: System Assertion
 */
}