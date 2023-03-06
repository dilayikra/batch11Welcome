public  class SoupApiOutboundCallout {

    /**
 * SOAP (Simple Object Access Protocol) - Earlier framework of doing Web Communication/Integration, Secure way of data transfering, XML Messaging Format only
 * Outbound Callout using SOAP Api - 4 Steps of Implementation
 * Step 1: Create Remote Site Setting - to whitelist Domain
 * Step 2: WSDL (Web Service Description Language) - Get WSDL from External System
 *  a. Endpoint Url, Features available, Input parameters (Request), Reponse - XML format
 * Step 3: Convert WSDL to Apex Class using Salesforce framework
 *  a. Useful information to extract from APex Class -
 *      i. Identify Inner Class - ImplementationPort
 *      ii. Endpoint
 *      iii. Features available - (Methods/Functiones defined in Inner Class)
 *      iv. Utilise any Feature - Understand Datatype for Input Paramets and Output Parameters
 * Step 4: Use/Consume/Invoke the Soap Apex Class to make callout
 */
    
    public static double makeMultiplication(){
        CalculatorSOAPApex.CalculatorImplPort calc=new CalculatorSOAPApex.CalculatorImplPort();
        Double num1=8.0;
        Double num2=2.0;
        Double result=calc.doMultiply(num1,num2);
        
        system.debug('Calculator Request Parametres for Multiply Feature is='+num1+' '+num2);
        system.debug('Calculator Response for Multiply Feature is='+result);
        return result;




    }

    public static List<String> makeParkCallout() {
        
    
        ParkSOUPApex.ParksImplPort park=new ParkSOUPApex.ParksImplPort();
        String inputCountry='India';
        List<String> parkNames=park.byCountry(inputCountry) ;
        System.debug('Park SOAP API  Response for Country-wise Feature is='+ parkNames);
        return parkNames;
        
    }

    public static double makeDivide() {
        CalculatorSOAPApex.CalculatorImplPort calc2=new CalculatorSOAPApex.CalculatorImplPort();
        Double n1=25.0;
        Double n2=5.0;
        Double result=calc2.doDivide(n1,n2);
        system.debug('Calculator Request Parametres for Divide Feature is='+n1+' '+n2);
        system.debug('Calculator Response for Divide Feature is='+result);
        return result;
    }


    public static Double makeSubtract() {
        CalculatorSOAPApex.CalculatorImplPort calc3=new CalculatorSOAPApex.CalculatorImplPort();
        Double n3=36.0;
        Double n4=10.0;
        Double result=calc3.doSubtract(n3,n4);
        system.debug('Calculator Request Parametres for Subtract Feature is='+n3+' '+n4);
        system.debug('Calculator Response for Subtract Feature is='+result);
        return result;
    }

    public static Double makeAdd() {
        CalculatorSOAPApex.CalculatorImplPort calc4=new CalculatorSOAPApex.CalculatorImplPort();
        Double n5=15.0;
        Double n6=6.0;
        Double result=calc4.doAdd(n5,n6);
        system.debug('Calculator Request Parametres for Add Feature is='+n5+' '+n6);
        system.debug('Calculator Response for Add Feature is='+result);
        return result;


        
    }



}
