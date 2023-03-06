@isTest
public  class AccountsBatchTest {
    @isTest
    private static void testBatch1() {
        //1.prepare data

        List<Account> listAcc=new List<Account>();
        for (Integer i = 0; i <100; i++) {

            account a=new account();
            a.name='Avengers ' + i;
            a.active__c='Yes';
            listAcc.add(a);
            
        }
        insert listAcc;

        test.startTest();
        AccountsBatch ab=new AccountsBatch();
        Database.executeBatch(ab,1000);
        test.stopTest();

        //3.assert

        List<Account> getacc= [select id,description from account];
        system.assert(getacc[0].description.contains('batch'));
        
    }
    

}
