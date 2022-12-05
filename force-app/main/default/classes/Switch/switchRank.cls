public  class switchRank {

    public String rankPriceSwitch(integer rank){
        String prize='';
        switch on rank {
            when 1 {
                prize='Gold';
                
            }
            when 2{
                prize='Silver';
                
            }
            when 3{
                prize='Bronze';

                }
            when 4,5,6,7,8,9,10{
                prize='Top 10 Certificate';
            }
            when else{
                prize='Participation Certificate';
            }
            }
            return prize;
        }
    }

