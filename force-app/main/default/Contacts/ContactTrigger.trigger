trigger ContactTrigger on Contact (before insert,before update,after insert,after update) {

    
   /* if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            system.debug('we are in before update trigger.');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    } */
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if(trigger.isAfter && trigger.isUpdate){
        ContactQueueableExample qc=new ContactQueueableExample(trigger.new);
        id jobID=System.enqueueJob(qc) ;
    }
    


















//Yeni bir Contact mevcut bir Accounta bağlı olarak oluşturulduğunda Contact other phone bağlı olduğu Account phone olsun.

/*if (trigger.isAfter && trigger.isInsert) {
    ContactTriggerHandler.otherPhoneofContact(trigger.new,trigger.newMap);

    
} */
    
    
    
    
    
    /*if (trigger.isBefore && trigger.isInsert) {
        System.debug('trigger new=' + trigger.new);
        system.debug('record sayısı='+ trigger.new.size());
        for (contact c : trigger.new) {
        
        System.debug('record=' + c);
        System.debug('first name=' + c.firstName);
        System.debug('last name=' + c.lastName);
        system.debug('id: ' + c.id);

        
       }
        
    }
    if (trigger.isAfter && trigger.isInsert) {
        for (contact c : trigger.new) {
        
            System.debug('record=' + c);
            System.debug('first name=' + c.firstName);
            System.debug('last name=' + c.lastName);
            system.debug('id: ' + c.id);
        
        
        
    }
    if (trigger.isBefore && trigger.isUpdate) {
        for (contact c : trigger.new) {
        
            System.debug('record=' + c);
            System.debug('first name=' + c.firstName);
            System.debug('last name=' + c.lastName);
            system.debug('id: ' + c.id);
        
           
        
    }
    if (trigger.isAfter && trigger.isUpdate) {
        for (contact c : trigger.new) {
        
            System.debug('record=' + c);
            System.debug('first name=' + c.firstName);
            System.debug('last name=' + c.lastName);
            system.debug('id: ' + c.id);
        
        
         
    } */
    
    
      //system.debug('Before update');
    //system.debug('After Update');

   /* if (Trigger.isBefore) {
        system.debug('We are in BEFORE.Not Saved');
        if (Trigger.isInsert) {
            system.debug('We are in BEFORE INSERT TRIGGER');

            
        }
        if (Trigger.isUpdate) {
            system.debug('We are in BEFORE UPDATE TRIGGER');

            
        }
        
    }
    
    if (Trigger.isAfter) {
        system.debug('We are in AFTER.SBNC');

        if (Trigger.isInsert) {
            system.debug('We are in AFTER INSERT TRIGGER');

            
        }
        if (Trigger.isUpdate) {
            system.debug('We are in AFTER UPDATE TRIGGER');

            
        }


    } */

}  
  