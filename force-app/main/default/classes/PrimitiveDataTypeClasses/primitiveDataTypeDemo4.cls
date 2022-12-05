public  class primitiveDataTypeDemo4 {
    public void printNewDate(){
        system.debug('Create new instance');

        

        Date newDate2=Date.newInstance(2022,10,10);
        system.debug('new date is ' + newDate2);
       
        Date newDate=Date.newInstance(1995,2,2);
        system.debug('new date is ' + newDate);

        Date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);

        
    }

    public void printTime(){

        Time myTime=Time.newInstance(1,1,15,65);
        system.debug('my time is ' + myTime);


    }

    public void printNewDateTime(){
        date newDate=date.today();
        time newTime=time.newInstance(1,1,15,55);

        Datetime dt1=Datetime.newInstance(newDate,newTime);
        system.debug('dt1 is ' + dt1);

        Datetime dt2=datetime.newInstance(2025,1,9);
        system.debug('dt2 is ' + dt2);
        
    }

    
}
