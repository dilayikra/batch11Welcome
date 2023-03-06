public class AccountsBatch implements Database.Batchable<sObject>, Database.stateful{
    integer count=0;
    integer countRecords=0;


  
    //soql query.
    //get all the records we want to process
    public Database.QueryLocator start(Database.BatchableContext bc){
        //query.
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, description, Active__c from account]);
        // 100 records
        //return CHUNK of it.
        return q1;
   }
   public void execute(Database.BatchableContext bc, List<account> scope){
    count++;
        system.debug('execute method start');
        List<account> updateAcc = new list<account>();
        for (account eachAcc : scope) {
            if (eachAcc.Active__c != 'No') {
                eachAcc.Description += '...updated via batch apex';
                updateAcc.add(eachAcc);
                countRecords++;
            }
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }
        system.debug('Execute method count: ' + count);
        system.debug('number of records proccessed count: ' + countRecords);
        system.debug('execute method done');
   }

   public void finish(Database.BatchableContext bc){
        system.debug('finish method called. Enjoy.');
        system.debug('Execute method count: ' + count);
        system.debug('number of records proccessed count: ' + countRecords);

   }
}


/* public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1=Database.getQueryLocator([select id,ownerid,closedare,stagename,lastmodifieddate from opportunity where stage not in ('Close Date','Closed Won') and LastModifiedDate < LAST_N_DAYS:7]);
        return q1;
        

        
   }
   public void execute(Database.BatchableContext bc, List<opportunity> scope){
    
    List<task> taskList = new List<task>();
    for (opportunity opp  : scope) {
        Task tsk=new task();
        tsk.subject='Task Test';
        tsk.description='Reminder -- Please take action on the Opportunity';
        tsk.WhatId=opp.id;
        tsk.ownerid=opp.ownerid;
        tsk.status='In Progress';

        if (opp.closedate< date.today()) {
            tsk.ActivityDate=date.today();
            
        }else {
            tsk.ActivityDate=opp.closedate.addDays(-2);
        }
        taskList.add(tsk);
    }
    if (!taskList.isEmpty()) {
        insert taskList;
        
    }
}
    public void finish(Database.BatchableContext bc){
        System.debug('İslem Tamam!'); 
    
   }*/
