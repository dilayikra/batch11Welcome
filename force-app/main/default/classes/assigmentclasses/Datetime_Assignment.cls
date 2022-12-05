public  class Datetime_Assignment {
    public void diffofDate(){

        Date varTomorrowDate =date.newInstance(2022,11,15);
        Date varTodaysDate =date.newInstance(2022,11,14);
        integer betweendays=varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('Days difference is->' + betweendays);
       }

       public void Timecheck(){
        
        Datetime varTomorrowDatetime=Datetime.newInstance(2022,11,15,7,0,0);
        system.debug('Tomorow s date is '+ varTomorrowDatetime);
        
        Datetime var10DaysDatetime=Datetime.newInstancegmt(2022,11,25,9,0,0);  
        system.debug('After 10 days date and time will be ' + var10DaysDatetime);
        
        Long varDatetimeLong=12339874361L;
        Datetime dt1=Datetime.newInstance(varDatetimeLong);
        system.debug('dt1 is-> ' + dt1);

        Datetime add7days=varTomorrowDatetime.addDays(7);
        system.debug(add7days);

        Datetime add10days=var10DaysDatetime.addDays(10);
        system.debug(add10days);


       }
    
}
