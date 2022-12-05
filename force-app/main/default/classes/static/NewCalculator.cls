public  class NewCalculator {
    public  static void welcomeMessage() {
        System.debug('Welcome to apex calculator.');
        
    }
    public  static void printNewMessage(String msg){
        System.debug(msg);
    }
    public  static integer add(Integer a,Integer b){
        Integer sum=a+b;
        return sum;
    }
    public  static integer add(integer int1,Integer int2,Integer int3){
        Integer sum=int1+int2+int3;
        return sum;
    }


    
}
