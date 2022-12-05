public  class StudentMarksheet {
    public void showMarksheetUsingDatatype(){

        string firstName='Dilay Ikra';
        string lastName='Demirbas';
        integer mathematics=85;
        integer english=90;
        integer chemistry=80;

        system.debug('My first name is '+ firstName);
        system.debug('My last name is '+ lastName);
        system.debug('Mathematics= '+ mathematics);
        system.debug('English= '+ english);
        system.debug('Chemistry= '+ chemistry);
    }

    public void showMarksheetUsingObject(){
        Object firstName='Dilay Ikra';
        Object lastName='Demirbas';
        Object mathematics=85;
        Object english=90;
        Object chemistry=80;


        system.debug(firstName+' '+ lastName+' Mathematics='+
        mathematics+' English='+english+' Chemistry='+chemistry);
        
    }
    
}
