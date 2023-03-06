@isTest
public  class SfTest {
    @isTest
    private static void sfTest() {
        Sf_Assg.insertSf();
        list<Salesforce_Project__c> listSf=[select id,project_name__c from Salesforce_Project__c where project_name__c='Phone23' ];
        system.assertEquals('Phone23',listSf[0].project_name__c );
        
        
    }
    
}
