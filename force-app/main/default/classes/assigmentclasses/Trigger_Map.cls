public  class Trigger_Map {
    public id  insertSF_Project() {
        
    Salesforce_Project__c sp=new Salesforce_Project__c();
    sp.project_name__c='Developer Class';
    insert sp;
    return sp.id;
        
    }

    public  void UpdateSF_Project(id x,string name) {
        Salesforce_Project__c sp2=new Salesforce_Project__c();
        sp2=[select id,project_name__c from salesforce_Project__c where id=:x];
        sp2.project_name__c=name;
        update sp2;
    }
}
