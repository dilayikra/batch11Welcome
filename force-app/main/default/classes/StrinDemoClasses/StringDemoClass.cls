public  class StringDemoClass {
    public void stringMethod1(){
    string sessionDescription='Learning string methods in apex language';
    
    integer lengthOfStr=sessionDescription.length();
    system.debug('length of session description is ' + lengthOfStr);

   
         String capsSessionDescription=sessionDescription.toUppercase();
         system.debug('in CAPS-> ' + capsSessionDescription);

         boolean apexContains=sessionDescription.contains('apex');
         system.debug('contains apex? ' + apexContains);

         boolean sfContains=sessionDescription.contains('Salesforce');
         system.debug('contains salesforce? ' + sfContains);
        }

       

}
