@isTest
public with sharing class SoapApiOutboundCalloutCalculatorMock2 implements WebServiceMock{
    
    public void doInvoke(
        Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
    ){
        CalculatorSOAPApex.doDivideResponse response_x=new CalculatorSOAPApex.doDivideResponse();
        response_x.return_x=5.0;
        response.put('response_x',response_x);

    }

    
}
