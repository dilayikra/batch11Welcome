public with sharing class LeadController {
    @AuraEnabled

    public static Lead[] getRecentLeads(){
        return [SELECT FirstName,LastName,Title,Company 
        FROM Lead Where Title != Null 
        With Security_Enforced 
        Order By CreatedDate DESC limit 5];
        
    }
}