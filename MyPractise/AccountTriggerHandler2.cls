public  class AccountTriggerHandler2 {

    


        public static void updateContact3(list<account> AccTriggerNew,list<account> AccTriggerOld,
    Map<Id,Account> accTriggerNewMap,Map<Id,Account> accTriggerOldMap) {

        Set<id> Idacc = new Set<id>();
        for (account eachacc :AccTriggerNew ) {
            if (eachacc.rating != accTriggerOldMap.get(eachacc.id).rating) {
                Idacc.add(eachacc.id);
                
            }
            }
            List<Contact> listCon =[select id,name,rating__c,account.id from Contact where Account.id=:Idacc];
            for (contact eachcon :listCon ) {
                String ratingCon=accTriggerNewMap.get(eachcon.Account.id).rating;
                eachcon.rating__c=ratingCon;
                
            }
            update listCon;


        
    }
    
    
    
    
    
    
    
    
    
    
    
 /*   public static void updateforContacts(list<account> AccTriggerNew,list<account> AccTriggerOld,
    Map<Id,Account> accTriggerNewMap,Map<Id,Account> accTriggerOldMap) {

        set<id> setIDs= new set<id>();
        for (account eachacc :AccTriggerNew ) {
            if (eachacc.phone != accTriggerOldMap.get(eachacc.id).phone) {
                setIDs.add(eachacc.id);
                
            }
            
        }
        List<contact> listCon = [select id,name,account.id,phone from contact where account.id=:setIDs];
        for (contact eachcon : listCon) {
            String accPhone=accTriggerNewMap.get(eachcon.account.id).phone;
            eachcon.phone=accPhone;
            
        }
        update listCon; 


        
    }
*/
}
