@isTest
public with sharing class SoapApiOutboundCalloutCalculatorMock4 implements WebServiceMock {
    
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
        CalculatorSOAPApex.doAddResponse response_x=new CalculatorSOAPApex.doAddResponse();
        response_x.return_x=21.0;
        response.put('response_x',response_x);
    }

    
}
