public  class MyCity {
    public void cityInformation(){

        /*String favCountry='United States';
        String favCity='Orlando';
        String faves='Gezmek istediğim ülke->'+favCountry+' ve şehir '+favCity;
        system.debug(faves); */

        Date myCountry=date.newInstance(1923, 10,29);
        System.debug('Turkiye nin kurulus tarihi-> ' + myCountry);

        Time gunDogumu=time.newInstance(7, 54,0,0);
        System.debug('Gun dogumu-> ' + gunDogumu);

        Date today=date.today();
        Date newDate=today.addMonths(-30);
        System.debug('36 ay önceki tarih-> ' + newDate);

    }
    
    /* public void stringMethod(){
        String s1='I am a Salesforce Developer';
        Boolean containForce=s1.contains('force');
        System.debug('S1 contains force? ' + containForce);
        System.debug('Length of s1 is ' + s1.length());
        String upperCase=s1.toUpperCase();
        System.debug(upperCase);
    }

    public void dateMethod (){
        Date currentDate=date.today();
        system.debug('Today s date is ' + currentDate );
        Datetime nowDate=Datetime.now();
        Datetime addHours=nowDate.addHours(50);
        System.debug('After 50 hours new date time will be ' + addHours); */
    }

    

