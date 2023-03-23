trigger AccountTrigger2 on Account (before insert,after insert,before update,after update) {

   /* if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account Before insert trigger called');
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account After insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('account Before update trigger called');
        
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('account After update trigger called');
    } */

    /* List<account> accTriggerList =trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('Account Before Trigger Called');
        System.debug('Account Before Trigger Called List size=>' + accTriggerList.size());

        for (account eachacc :accTriggerList ) {
            System.debug('Account Before record id=>' + eachacc.Id+ ' Account Before record name=>' +eachacc.Name);
            
        }
        
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('Account After Trigger Called');
        System.debug('Account After Trigger Called List size=>' + accTriggerList.size());

        for (account eachacc :accTriggerList ) {
            System.debug('Account After record id=>'+ eachacc.Id +' Account After record name=>' + eachacc.Name);
            
        } */

        /*
        List<account> accTriggerList =Trigger.new;
        if (Trigger.isBefore && Trigger.isUpdate) {
            System.debug('Account Before Update Trigger Called');
            System.debug('Account Before Update Trigger Called  List size=>'+ accTriggerList.size());

            for (account eachacc :accTriggerList ) {
                System.debug('Account Before Update record id=>'+ eachacc.Id +' Account Before Update record name=>' + eachacc.Name);
                
            }
            
        }

        if (Trigger.isAfter && Trigger.isUpdate) {
            System.debug('Account After Update Trigger Called');
            System.debug('Account After Update Trigger Called List size=>' + accTriggerList.size() );

            for (account eachacc :accTriggerList ) {
                System.debug('Account After Update record id=>'+ eachacc.Id +' Account After Update record name=>' + eachacc.Name);
                
            }
            
        } */


        
    }



        




    







 