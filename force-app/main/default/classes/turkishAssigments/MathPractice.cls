public class MathPractice {
     public Decimal practiceOne(Decimal x,Decimal y){

        decimal dikdortgen=(x+y)*2;
        System.debug('Dikdörtgenin çevre uzunluğu= ' + dikdortgen);
        return dikdortgen;
        } 

        public Decimal practiceTwo(Decimal a,Decimal b){
            Decimal index=b/a*a;
            System.debug('Vucüd kitle indexi=' + index);
            Decimal extra=index.setScale(3);
            System.debug('Vucüd kitle indexi= ' + extra);

            return index;
            } 

          public  Decimal practiceThree(String a,Decimal c ,Decimal d){
            Decimal hesap=0;
            
            Switch on a {
            when 'cevre' {
                hesap=(c+d)*2;
                Decimal sonuc=hesap;
                Decimal newSonuc=sonuc.round();
                System.debug('Dikdörtgenin çevresi= ' + newSonuc);
                }
            
            when 'alan'{
                hesap=c*d;
                Decimal sonuc2=hesap;
                Decimal newSonuc2=sonuc2.round();
                System.debug('Dikdörtgenin alanı= ' + newSonuc2);
                
            }
            when else{
                System.debug('Yanlış değer girdiniz');
            }
            }
        return hesap;
    

        } 

        public String practiceFour(decimal f,Decimal g){
            Decimal vucudIndex=f.divide(g*g,1);
            String newValue=String.valueOf(vucudIndex);
           
            if(vucudIndex>0 && vucudIndex<18.4){
                newValue='Zayıf';
                
            } else if(vucudIndex>18.5 && vucudIndex<24.9){
                newValue='Normal';
                
            } else if(vucudIndex>25 && vucudIndex<29.9){
                newValue='Kilolu';
                
            } else {
                newValue='Invalid Data';
            }
            return newValue;

            }

            public Integer practiceFive(integer h,integer j) {
                integer sum=0;
                if (h<j) {
                    for (Integer i =h; i <=j; i++) {
                        sum+=i;
                        
                    }
                    
                } else if (j<h) {
                    for (Integer i = j; i <=h; i++) {
                        sum+=i;
                        
                    }
                    
                } else {
                    sum=h+j;
                }

                return sum;


                
            }

}