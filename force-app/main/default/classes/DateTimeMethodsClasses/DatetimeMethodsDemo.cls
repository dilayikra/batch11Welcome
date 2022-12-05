public  class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){

       Date todaydate=date.today();
        Date birthdate=date.newInstance(2001,03,26);
        
        integer mybirthdate=birthdate.monthsBetween(todaydate);
        system.debug('My age in months is '+ mybirthdate); 
        } 

        public void calculateAgeInDays(){
            Date todaydate=date.today();
        Date birthdate=date.newInstance(2001,03,26);
        
        integer mybirthdate=birthdate.daysBetween(todaydate);
        system.debug('My age in days is '+ mybirthdate);
        } 

        public void printSubscriptionEndDate (){
            Date subscriptionStartDate=date.today();
            Date subscriptionEndDate=subscriptionStartDate.addDays(1000);
            system.debug('Subscription end date= ' + subscriptionEndDate);

            integer endDateYear=subscriptionEndDate.year();
            system.debug('Subscription end date year= ' + endDateYear);

            integer endDateMonth=subscriptionEndDate.month();
            system.debug('Subscription end date month= ' + endDateMonth);
            } 

            public void printOfferEndDateTime(){
                Datetime dtNow=datetime.now();
                

                Datetime dtOfferEnd=dtNow.addHours(51);
                system.debug('Offer end date & time '+ dtOfferEnd);
                } 

                public void birthdateToMilliSeconds(){
                    Datetime birthdate=Datetime.newInstance(2001,03,26,13,0,0);
                    Long longBirthdate=birthdate.getTime();
                    system.debug('My milli second birthdate is ' +longBirthdate);
                    

}

                










       

}
