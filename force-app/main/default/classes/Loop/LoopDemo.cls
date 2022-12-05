public  class LoopDemo {

    /* public void print_int_while(){
        Integer count=1;
        while (count<=25) {
            System.debug(count);
            count++;
            
        }
    } */

   /* public void print_N_numbers(integer n){
        for (integer i=0; i<n ;i++) {
            System.debug(i);
            
        }
    } */

    public void printOddNumber(integer startInt,integer endInt){
        
        if (startInt>endInt) {
            system.debug('Not allowed');
            
        } else{
            for (Integer i =startInt; i <=endInt; i++) {
                Integer mod1=math.mod(i, 2);
                if (mod1==1) System.debug(i);

        }
        
        
                
            
            
        }
    }
    
}
