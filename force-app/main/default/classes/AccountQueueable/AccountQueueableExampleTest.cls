@isTest
public  class AccountQueueableExampleTest {

    @isTest
    private static void testQueueable1() {
        List<Account> listAcc=new List<Account>();
        for (Integer i = 0; i <200; i++) {

            account a=new account();
            a.name='Pi account ' + i;
            a.active__c='Yes';
            listAcc.add(a);
        }
        insert listAcc;

        test.startTest();
        AccountQueueableExample aq=new AccountQueueableExample(listAcc);
        system.enqueueJob(aq);
        test.stopTest();

        List<Account> getacc=[select id,name from account];
        system.assert(getacc[0].name.contains('-- SI'));
    
}
}
