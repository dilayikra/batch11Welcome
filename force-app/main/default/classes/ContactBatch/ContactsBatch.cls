public  class ContactsBatch implements Database.Batchable<sObject>, Database.stateful{
    integer count=0;
    integer countRecords=0;

public Database.QueryLocator start(Database.BatchableContext bc){
        
        Database.QueryLocator q1 = Database.getQueryLocator([select id, lastname, description from contact]);
        return q1;
   }
   public void execute(Database.BatchableContext bc, List<contact> scope){
    count++;
        system.debug('execute method start');
        List<contact> updateCon = new list<contact>();
        for (contact eachcon : scope) {
            
                eachcon.Description += 'Updated by Batch.';
                updateCon.add(eachcon);
                countRecords++;
            
        }
        if (!updateCon.isEmpty()) {
            update updateCon;
        }
        system.debug('Execute method count: ' + count);
        system.debug('number of records proccessed count: ' + countRecords);
        system.debug('execute method done');
   }

   public void finish(Database.BatchableContext bc){
        system.debug('batch over');
        system.debug('Execute method count: ' + count);
        system.debug('number of records proccessed count: ' + countRecords);

   }
    
}
