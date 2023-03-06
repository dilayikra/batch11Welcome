@isTest
public  class ContactQueueableTest {


    @testSetup
    public static void part1(){

        List<account> listAcc=new List<account>();
        for(integer i=0; i<100; i++){
            account a=new account();
            a.name='Account Test ' + i;
            a.active__c='Yes';
            listAcc.add(a);
        }
        insert listAcc;

    }
    
        @isTest
        private static void ContactQueueablePart2(){
        list<account> accList=[select id,name,Active__c from account where Active__c = 'Yes'];

        test.startTest();
        ContactQueueableExample cq=new ContactQueueableExample(accList);
        system.enqueueJob(cq);
        test.stopTest();
        
        System.assertEquals(100, accList.size());

        list<account> getacc=[select id,name,active__c,(select id,lastname from contacts where lastname='Contact Test') from account];
        System.assertEquals(1,getacc[0].contacts.size() );
        
    
}
}
