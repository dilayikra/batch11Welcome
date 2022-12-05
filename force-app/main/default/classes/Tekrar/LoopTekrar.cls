public  class LoopTekrar {
    public void printIntWhile(){
        Integer count=1;
        while (count<=5) {
            System.debug(count);
            count ++;
        }
    }
    public void print2(){
        Integer sayac=2;
        while (sayac<6) {
            System.debug(sayac);
            sayac ++;
        }
    }
    public void printIntNum(Integer n){
        for (Integer i = 0; i < n; i++) {
            System.debug(i);
            
        }
        }
        public void newNums(Integer x){
            for (Integer i = 6; i <x; i++) {
                System.debug(i);
                
            }
        }

        public void printOddNum(Integer startInt,Integer endInt){
            for (Integer i= startInt; i< endInt;i++) {
                Integer modI=math.mod(i, 2);
                if (modI==1) System.debug(i); 
            }
        } 
        public void printEvenNum(Integer x,Integer y){
            for (Integer i =x; i <y; i++){
                Integer mod2=math.mod(i, 2);
                if (mod2==0) System.debug(i); 
                    
                

            }
                
            }
        }


