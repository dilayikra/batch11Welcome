@isTest
public with sharing class SoapApiOutboundCalloutCalculatorMock3 implements WebServiceMock{
    
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
        CalculatorSOAPApex.doSubtractResponse response_x=new CalculatorSOAPApex.doSubtractResponse();
        response_x.return_x=26.0;
        response.put('response_x',response_x);
    }

    
}
