trigger AccountTrigger on Account (before insert,before update,after insert,after update) {

    
  /*  if (trigger.isAfter && trigger.isInsert) {
        AccountQueueableExample aq=new AccountQueueableExample( trigger.new);
        id jobId=system.enqueueJob(aq);
        
    } */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
    if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerHandler.createContact(trigger.new);
    }

     // 2. Bir account update edildiğinde name değişmişse description fieldine name değişti mesajı yazdır..
     if (trigger.isBefore && trigger.isUpdate) {
        AccountTriggerHandler.updateName(trigger.new, trigger.oldMap);

        for (account acc : trigger.new) {
            if (acc.name != trigger.oldMap.get(acc.id).name) {
                acc.Description = 'Bu recordda isim degisikligi oldu..';
            }
        } */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerHandler.createContact(trigger.new);
    } */
    
    
    
    
    
    
    /*if (trigger.isAfter && trigger.isInsert) {
        AccountHandler_assg.createcontact(Trigger.New,Trigger.Old, Trigger.NewMap,Trigger.OldMap);
        
    } */

  
  
  
  
  
    /*if (Trigger.isAfter ) {
        if (trigger.isUpdate) {
            AccountTriggerHandler2.updateContact3(Trigger.New,Trigger.Old, Trigger.NewMap,Trigger.OldMap);
            
        }
        
    } */

    

   
   
   
   
   
   
    /* if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateforContacts(Trigger.New,Trigger.Old, Trigger.NewMap,Trigger.OldMap);
        
    } 
    my own practise */
    
    
    
    
    /*if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforContacts(Trigger.New,Trigger.Old, Trigger.NewMap,Trigger.OldMap);

        
    }  */


   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
   /*if(trigger.isBefore){
        AccountTriggerHandler.updateDescription(Trigger.New,Trigger.Old, Trigger.NewMap,Trigger.OldMap);
    } */

    
    
    
   
   
   
   
  /* if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    } */
    
    /*List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    if (Trigger.isAfter && Trigger.isUpdate) {

        //old account name and new account name using ONE for loop.
        
        //get set of id using map.
        set<id> accountIds = accTriggerNewMap.keySet();
        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('NEW Acc Name is ' +  newacc.Name);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc Name is ' +  oldacc.Name);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    } */
                
    //system.debug('account before insert trigger called.');
    //system.debug('account after insert trigger called.');

    /* if (Trigger.isInsert) {
        system.debug('after insert trigger');
        }  
    if (Trigger.isUpdate) {
        system.debug('before update trigger');
        } 
    

    //system.debug('account before insert trigger called');
    //system.debug('account before update trigger called');

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('Before insert trigger called');
        
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('After insert trigger called');
        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('Before update trigger called');
        
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('After update trigger called');
        
    }  */

    /*
    List<account> accountTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('Before Update new record->' + accountTriggerNew);
        system.debug('Before Update newaccount size->' + accountTriggerNew.size());

        for (account eachacc :accountTriggerNew ) {
            system.debug('Before Update each id is ' + eachacc.Id+ ' Before Update each name is '+ eachacc.Name);
            
        }
    } 
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('After Update newrecord->' + accountTriggerNew);
        system.debug('After Update new account size->' + accountTriggerNew.size());

        for (account eachacc :accountTriggerNew ) {
            system.debug('After Update each id is ' + eachacc.Id+ ' After Update each name is '+ eachacc.Name);
            
        }
    } 
    
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('Before Insert newly inserted record->' + accountTriggerNew);
        system.debug('Before Insert newly inserted account size->' + accountTriggerNew.size());

        for (account eachacc :accountTriggerNew ) {
            system.debug('Before each id is ' + eachacc.Id+ ' each name is '+ eachacc.Name);
            
        }
    } 
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('After Insert newly inserted record->' + accountTriggerNew);
        system.debug('After Insert newly inserted account size->' + accountTriggerNew.size());

        for (account eachacc :accountTriggerNew ) {
            system.debug('After each id is ' + eachacc.Id+ ' each name is '+ eachacc.Name);
            
        } */

        /*if (Trigger.isBefore) {
            if (trigger.isUpdate) {
                for (account oldacc : trigger.old) {
                    system.debug('Before Update Old acc id=' + oldacc.Id + ', Old acc name is=' + oldacc.Name);
                    
                }
                for (account newacc : trigger.new) {
                    system.debug('Before Update New acc id=' + newacc.Id + ', New acc name is=' + newacc.Name);
                }
                }
            } 
        
        
        if (Trigger.isAfter) {
            if (trigger.isUpdate) {
                for (account oldacc : trigger.old) {
                    system.debug('After Update Old acc id=' + oldacc.Id + ', Old acc name is=' + oldacc.Name);
                    
                }
                for (account newacc : trigger.new) {
                    system.debug('After Update New acc id=' + newacc.Id + ', New acc name is=' + newacc.Name);
                }
                }
                } */
            /*
        if (Trigger.isBefore && Trigger.isInsert) {
            system.debug('Account Before Insert trigger.old=>'+ trigger.old);
            
        }
        if (Trigger.isAfter && Trigger.isInsert) {
           
            system.debug('Account After Insert trigger.old=>'+ trigger.old);
            } */






    }





    









