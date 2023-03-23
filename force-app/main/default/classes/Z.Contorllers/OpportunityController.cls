public  class OpportunityController {
    @AuraEnabled
    public static Decimal getOpps(String stage){
        List<opportunity> listOpp= [SELECT Name,StageName,Amount
                FROM Opportunity
                WHERE StageName=:stage 
                AND Amount != Null
                WITH SECURITY_ENFORCED];
                
                Decimal total=0;
                for (Opportunity opp : listOpp) {
                    total +=opp.amount;
                    
                }


          return total;      
    }
    
}