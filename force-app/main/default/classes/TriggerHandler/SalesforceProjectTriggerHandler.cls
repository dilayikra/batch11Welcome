public  class SalesforceProjectTriggerHandler {
    
        
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        try{
            List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();
            //get the default ORG value using 'getOrgDefaults' method of custom settings.s
            DefaultTicketInfo__c defaultValues = DefaultTicketInfo__c.getOrgDefaults();
            
            for (salesforce_project__c eachSP : spTriggerNew) {
                Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
                //set the Ticket subject = custom setting value's subject.
                newST.Subject__c = defaultValues.Subject__c;//make it a little dynamic, so admin or dev can change it.
                newST.Salesforce_Project__c = eachSP.Id;
                newST.Description__c = defaultValues.description__c;
                newST.Priority__c = 'Medium';
                listST.add(newST);
            }
            if (!listST.isEmpty()) {
                List<database.SaveResult> results = database.insert(listST, false);
                for(database.SaveResult r: results){
                if(r.isSuccess()){
                    system.debug('inserted successfully, record id is ' + r.getId());
                } else {
                    
                    system.debug('errored out. errors are ' + r.getErrors());
                }
            }
            }
        } catch(exception ex){
            for(Salesforce_Project__c sp: spTriggerNew){
                sp.addError('Error in creating Default ticket. Please contact your dear administrator');
            }
        }
        
    }
            
        


        
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /*List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();
            try{
                for (salesforce_project__c eachSP : spTriggerNew) {
                    Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
                    newST.Subject__c = 'Default ticket';
                    newST.Salesforce_Project__c = eachSP.Id;
                    //newST.Priority__c='Medium';
                    listST.add(newST);
                }
                if (!listST.isEmpty()) {
                   List<database.SaveResult> results= database.insert(listST,false);
                   for (database.SaveResult r : results) {
                    if (r.issuccess()) {
                        System.debug('Inserted successfully,record id is ' + r.getId());
                        
                    }else {
                        System.debug('errored out.errors are ' + r.getErrors() );
                    }
                    
                   }
                }

            } catch(exception ex){
                for (salesforce_project__c  sp :spTriggerNew ) {
                    sp.addError('Error in inserting Default Ticket.Please contact your dear administrator ');
                    
                }
            }
    
            
        } */
        /*
    
        public static void completeSPvalidation(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
        Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
            
            set<id> spCompletedIds = new set<id>();
            for (salesforce_project__c eachSP : spTriggerNew) {
                if (eachSP.Status__c == 'Completed' && eachSP.Status__c != SpTriggerOldMap.get(eachSP.id).Status__c) {
                    spCompletedIds.add(eachSP.Id);
                }
            }
    
            //get all tickets which are not compelted.
            List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                                                where Salesforce_Project__c in :spCompletedIds
                                                and status__c != 'Completed'];
            for (salesforce_ticket__c eachST : listST) {
                Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
                spNew.addError(
                    'Cannot complete project because all tickets are not completed. Go away.'
                );
            }
        }
    
        @future
        public static void spUpdateDescription(){
            system.debug('inside future method. Huhuuu');
        }
        
    } */
}


