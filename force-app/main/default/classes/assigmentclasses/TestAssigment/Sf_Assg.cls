public  class Sf_Assg {
    public static void insertSf() {
        list<Salesforce_Project__c> lstsf=new list<Salesforce_Project__c>();
        for (Integer i =0; i <10;i++) {
            Salesforce_Project__c varsf=new Salesforce_Project__c();
            varsf.project_name__c='Phone23';
            lstsf.add(varsf);

            
        }
        insert lstsf;

        
    }
    
}
