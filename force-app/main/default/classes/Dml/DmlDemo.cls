public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create a new account record using apex code(Dml)
        //1.create new instance
        //2.set values to fields

        Account acc=new Account();
        //2.set values to fields

        acc.Name='Softinnovas';
        System.debug('not inserted ' +acc);

        //3 dml.
        insert acc; //booom
        System.debug('INSERTED ' +acc);

        

        
    }
    

    /* public static void dmlInsertDemo_cstmObj() {
        Salesforce_project__c spNew=new Salesforce_project__c();
        spNew.project_name__c='Teach DML to batch 11';
        spNew.description__c='Everybody is doing great.Keep it up';
        

        insert spNew;


} 

public static void dmlUpdateDemo_1() {
    account acc=new account();
    acc.Name='Softinnovas';
    insert acc;


    acc.Name='Salesforce Inc.';
    update acc;
    System.debug(acc);
}

public static void dmlUpdateDemo_3() {

    account acc=[select name from account where name='Softinnovas' limit 1];
    acc.Name='SoftInnovas Inc.';
    update acc;
    system.debug('Updated acc-> ' + acc);

} */

 /*public static void dmlInsertDemo_4() {
    Account acc=[select id,name from account where name='SoftInnovas Inc.' 
    limit 1];

    contact cnt=new contact();
    cnt.LastName='Biden';
    cnt.AccountId=acc.Id;
    insert cnt;
    system.debug('Contact record: ' + cnt);
    
    
}*/

 public static void dmlInsertDemo_55() {
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate desc limit 1];

        //we want to create related ticket
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn Apex dmls';
        stNew.Priority__c = 'High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 5);
        stNew.Salesforce_Project__c = sp.Id;
        insert stNew;
        system.debug('st is ' + stNew);
    }

    /*public static void dmlInsertMultiple_right() {
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void dmlInsertMultiple_right2() {
        List<account> listAcc = new list<account>();

        for (Integer i = 0; i < 155; i++) {
            account acc = new account();
            acc.name = 'Softinnovas v' + i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }
        //check if list is NOT empty
        if (!listAcc.isEmpty()) {
            insert listAcc;//execute this ONLY if LIST is NOT EMPTY.
        }
    }

    public static void dmlUpdateMultiple_right1() {
        list<account> listAcc = [select id, name, active__c from account ];

        list<account> updateAccount = new list<account>();

        for (account acc : listAcc) {
            if (acc.Active__c == 'Yes') {
                acc.Name = acc.Name + ' via B.0';
                updateAccount.add(acc);
            }
        }
        if (!updateAccount.isEmpty()) {
            update updateAccount;
        }
    } */
}

  

