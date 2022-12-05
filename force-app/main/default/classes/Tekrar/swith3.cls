public  class swith3 {

    public String turnNum(Integer z){

        String Numbers='';

        switch on z {
            when 11,13,15,17,19,21 {
                Numbers='Odd Numbers';
                
            }
            when 10,12,14,16,18,20 {
                Numbers='Even Numbers';
                
            }
            when 2,3,7{
                Numbers='Prime Numbers';
            }
            when else{
                System.debug('Farklı değer girdiniz');
            }
        }
        return Numbers;

    }
    
}
