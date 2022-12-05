public  class Car {
   
    //Public class variable
     public String carColor='';
     Integer  maxSpeed=150;
     public String carName='';

     public void switchOn(){
        Datetime switchOnTime=Datetime.now();
        System.debug('starting the car');
     }
     public void drive(){
        System.debug('driving ' + carName + ' of color o' + carColor);
     }

     public void driveAtMaxSpeed(){
        String drivingDescription='driving ' + carName + ' at max speed ' + maxSpeed + ' km/hr';
        System.debug(drivingDescription);
     }
   
      

}
