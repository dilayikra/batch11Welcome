public with sharing class RestCallout11 {
    
    
    public static void getUser() {
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users/3');
        request.setMethod('GET');
        


       
        Http http = new Http();
        HttpResponse response = http.send(request);


        if (response.getStatusCode() == 200) {
            system.debug(response.getBody());

            string jsonUser=response.getBody();
            Map<String, Object> userValue = (Map<String, Object>) JSON.deserializeUntyped(jsonUser);
            System.debug('Veri=> ' + userValue);
            system.debug('data=> ' +userValue.get('data'));
            System.debug('Support=>' + userValue.get('support'));

            Map<String,Object> userInfo =(Map<String,Object>)userValue.get('data');

            String emailId=String.valueof(UserInfo.get('email'));
            String firstName=String.valueof(UserInfo.get('first_name'));
            String lastName=String.valueof(UserInfo.get('last_name'));
            Integer userId=Integer.valueof(UserInfo.get('id'));

            System.debug('Email Id: ' +emailId);
            System.debug('Name: ' +firstName);
            System.debug('Last Name: ' +lastName);
            System.debug('Id: ' +userId);



            


        
    }
}
}