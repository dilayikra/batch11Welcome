public  class String_Assignment {
    public void stringAssigment1(){
        String Localstring = 'Thanks for the session on the string';
        integer lengthOfStr=Localstring.length();
        system.debug('Length of local string is ' + lengthOfStr);

        String capsLocalstring=Localstring.toUppercase();
        system.debug(capsLocalstring);
        
        boolean sessionContains=Localstring.contains('session');
        system.debug('Contains session? ' + sessionContains);

        boolean sessionContains2=Localstring.contains('sessions');
        system.debug('Contains sessions? ' + sessionContains2);

        boolean sessionContains3=Localstring.containsIgnoreCase('SESSION');
        system.debug('Contains Ignore Case Session? ' + sessionContains3);




        
       
       
        
    }
    
}
