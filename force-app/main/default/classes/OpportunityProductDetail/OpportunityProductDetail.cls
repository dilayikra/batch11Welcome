public  class OpportunityProductDetail {

    public static void oppDetails() {
        //Soql bize her zaman list döndürür
        List<opportunity> lstOpps =[select id,stagename,name,account.name,(select id,product2.name,name,quantity,totalprice,UnitPrice from opportunityLineItems) from Opportunity];
        Map<id, decimal> OpportunityTotalPriceMap=new Map<id, decimal>();
        for (opportunity eachop : lstOpps ) {
            system.debug('EachOp name is= ' + eachop.name);
            if (!eachop.opportunityLineItems.isEmpty()) {
                List<opportunityLineItem> eachOpline = eachop.opportunityLineItems;
                Decimal opTotalPrice=0;
                for (opportunityLineItem pl : eachOpline) {
                    system.debug('Product name is -> ' + pl.product2.name );
                    opTotalPrice +=pl.totalprice;
                    
                }
                if (opTotalPrice !=0) {
                    OpportunityTotalPriceMap.put(eachop.id, opTotalPrice);
                    
                }

                
            }
            System.debug('Map of opp id vs total price is => ' + OpportunityTotalPriceMap );
            
        }

        
    }
    
}
