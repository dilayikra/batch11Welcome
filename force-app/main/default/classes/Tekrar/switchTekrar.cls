public  class switchTekrar {
    
    public String rankPriceSwitch(Integer rank){
        String Price='';

        switch on rank {
            when 1 {
                price='Gold';
            }
            when 2 {
                price='Silver';
                
            }
            when 3 {
                Price='Bronze';
                
            }
            when 4,5,6,7,8,9,10 {
                Price='Top 10 Certificate';
                
            }
            when else {
                Price='Participation Certificate';
                
            }
        }
        return Price;

    }
    
}
