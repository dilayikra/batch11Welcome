import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

export default class GetRecordContact extends LightningElement {
    recordId = '0038d00000NugGQAAZ';

    firstName;
    lastName;
    accountName;
    department;
    leadSource;
    email;


    @wire(getRecord, {recordId : '$recordId', layoutTypes: ['Full']})
    recordHandler({data, error}){
        if(data){
            console.log('Contact Data =>' , data);
              /* Approach-1 */
            
            this.firstName = data.fields.FirstName.value;
            this.lastName = data.fields.LastName.value;
            this.accountName = data.fields.Account.displayValue;
            this.department = data.fields.Department.value;
            this.leadSource = data.fields.LeadSource.displayValue;
            this.email = data.fields.Email.value;



        }
        if(error){
            console.error(error);
        }
    }
}