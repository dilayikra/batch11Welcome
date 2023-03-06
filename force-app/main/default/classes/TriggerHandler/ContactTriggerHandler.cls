public  class ContactTriggerHandler {

    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

        //validation
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
}
public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

        for (contact eachContact : conTriggerNew) {
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (eachContact.LeadSource != oldContact.LeadSource) {
                string customError = system.label.ContactValidation2;
                eachContact.LeadSource.addError(customError);
            }
        }
}

    //Yeni bir Contact mevcut bir Accounta bağlı olarak oluşturulduğunda Contact other phone bağlı olduğu Account phone olsun.

   /* public static void otherPhoneofContact(list<contact> conTriggerNew,Map<Id,Contact> conTriggerNewMap) {
        //insert edilen tüm contact lardan account a bağlı olanları seçelim
        Set<id> conIds = new Set<id>();
        for (contact con : conTriggerNew) {
            if (con.AccountId != null) {
                conIds.add(con.Id);
                
            }
            
        }
        List<contact> conList =[select id,otherPhone,Account.phone from contact where id In:conIds ];
        for (contact cn : conList) {
            cn.otherPhone=cn.Account.phone;

            
        }
        update conList;



        
    } */


   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
   


        
    } 




