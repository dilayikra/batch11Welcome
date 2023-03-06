public  class AccountTriggerHandler {

    public static void createContact(List<Account> accTriggernew) {
        List<Contact> conList = new List<Contact>();
        for (account acc : accTriggernew) {
            for (Integer i = 1; i <= 7; i++) {
                contact c = new contact();
                c.FirstName = acc.name;
                c.LastName = 'Contact ' + i;
                c.AccountId = acc.id;
                conList.add(c);
            }
        }

        insert conList;
    }
    public static void updateName(List<Account> triggerNew, Map<Id, Account> triggerOldMap) {
        for (account acc : triggerNew) {
            if (acc.name != triggerOldMap.get(acc.id).name) {
                acc.Description = 'Bu recordda isim degisikligi oldu..';
            }
        }
    }

    
    
    
    
    
    
    
    
    
    
    
   /* public static void updateVIPforContacts(list<account> AccTriggerNew,list<account> AccTriggerOld,
        Map<Id,Account> accTriggerNewMap,Map<Id,Account> accTriggerOldMap) {

            //create set account ids were vip is changed
            Set<id> setAccIds = new Set<id>();
            //get contacts for all those accounts

            for (account eachacc : AccTriggerNew) {
                if (eachacc.VIP__c !=accTriggerOldMap.get(eachacc.id).VIP__c) {
                    setAccIds.add(eachacc.id);
                    }
                }

            List<contact> listContacts =[select id,name,account.id, vip__c from contact where account.id in :setAccIds];
            for (contact eachContact :listContacts ) {
                boolean accVIP=accTriggerNewMap.get(eachContact.Account.id).VIP__c;
                eachContact.VIP__c=accVIP;
                
            }
            update listContacts;



            
        } */

        /*public static void updateDescription(list<account> AccTriggerNew,list<account> AccTriggerOld,
           Map<Id,Account> accTriggerNewMap,Map<Id,Account> accTriggerOldMap ){
            for(account eachAcc: AccTriggerNew){
            boolean updateDesc=false;
            if(trigger.isInsert && eachAcc.active__c=='Yes'){
                updateDesc=true;
            }

            if(trigger.isUpdate){
                if(eachAcc.active__c=='Yes'){
                    updateDesc=true;
                }
            }
            if(updateDesc){
                eachAcc.description='Account is now active. Enjoy buddy!!';


            }

        }
    
    } */


}


