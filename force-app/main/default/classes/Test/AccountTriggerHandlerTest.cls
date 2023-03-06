@isTest
public class AccountTriggerHandlerTest {
    @isTest
    public static void testMethod1() {
        account acc1= new account();
        acc1.name= 'SI Test';
        acc1.industry= 'Energy';
        acc1.Active__c= 'No';

        account acc2= new account();
        acc2.name= 'UI Test';
        acc2.industry= 'Energy';
        acc2.Active__c= 'Yes';

        account acc3= new account();
        acc3.name= 'PI Test';
        acc3.industry= 'Banking';
        acc3.Active__c= 'No';

        List<Account> listAcc = new List<account>{acc1, acc2, acc3};
        insert listAcc;

        list<contact> listContact = new List<Contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact cnt = new Contact();
            cnt.LastName= 'Test SOQL';
            if (i<100) {
                cnt.AccountId = acc1.id;
            }else if (i<200) {
                cnt.AccountId= acc2.id;
            } else {
                cnt.AccountId= acc3.id;
            }
            listContact.add(cnt);
        }
        insert listContact;
        List<Account> insertYesList =[select name,Active__c,description from account where active__c= 'Yes'];
        system.assertEquals('Account is now active. Enjoy buddy!!', insertYesList[0].Description);
        
        for (account eachAcc : listAcc) {
            eachAcc.Active__c= 'Yes';
        }
        update listAcc;

        List<Account> updateYesList =[select name,Active__c,description from account where active__c= 'Yes'];
        system.assertEquals('Account is now active. Enjoy buddy!!', updateYesList[0].Description);
    }
}
