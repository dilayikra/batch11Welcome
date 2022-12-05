public  class NewCar {
    
    Integer currentSpeed=0;
    String carType;
    String carName;

    public void startCar(String carName,String carType){
        String startCar=carName+ ' ' + carType;
        System.debug(startCar);
        }
        public Integer Accelerate(integer x){
        currentSpeed= currentSpeed+x;
        System.debug('Curent speed is= '+ currentSpeed);
        return currentSpeed;
        }
        public Integer Brake(Integer y){
            currentSpeed=currentSpeed-y;
            System.debug('Current speed is= ' + currentSpeed);
            return currentSpeed;
        }
        public integer stopCar(){
            currentSpeed=0;
            System.debug('Current speed is ' +currentSpeed+ ' car stopped');
            return currentSpeed;
        }
        public String checkSpeed(){
            String carSpeed='';

            if(currentSpeed>0 && currentSpeed<=30){
                carSpeed='City Mode';
                System.debug('Car is on ' + carSpeed);
                
            }else if(currentSpeed>31 && currentSpeed<=60){
                carSpeed='Economy Mode';
                System.debug('Car is on ' + carSpeed);

            }else if(currentSpeed>60){
                carSpeed='Sports Mode';
                System.debug('Car  is on ' + carSpeed);

            }
            return carSpeed;

            



        }



}
