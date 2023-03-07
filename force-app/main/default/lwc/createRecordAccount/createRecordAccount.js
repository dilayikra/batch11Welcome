import { LightningElement, track } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { createRecord } from 'lightning/uiRecordApi';




export default class CreateRecordAccount extends LightningElement {
    @track formData={};
    


    
    changeHandler(event){
        const name = event.target.name;
        const value= event.target.value;
        this.formData[name]=value;

        console.log("FormData=>" + JSON.stringify(this.formData));
        


    }

    cancelAccount(){
        this.template.querySelector("form.accountForm").reset();
        this.formData ={}; 


    }

    saveAccount(){
        const revenue = Number(this.formData.AnnualRevenue);
        if(revenue>=1000000){
            this.formData["Rating"] = "Hot";
            this.formData["CustomerPriority__c"] = "High";

        }else if(revenue<1000000 && revenue>=500000){
            this.formData["Rating"] = "Warm";
            this.formData["CustomerPriority__c"] = "Medium";
        } else{
            this.formData["Rating"] = "Cold";
            this.formData["CustomerPriority__c"] = "Low";
        }
        const recordInput ={
            apiName: ACCOUNT_OBJECT.objectApiName ,
            fields: this.formData

        }
        createRecord(recordInput)
        .then(result => {console.log(result);
            this.cancelAccount();
        
        })
        .catch(error => {
            console.log(error);

        })



    }




    
}




//Use Case : Create a new Account record. Get the values for Name, Type, Industry and Annual Revenue Fields. 
    // If Annual Revenue is greater than 1000000 then assign Rating = Hot and CustomerPriority = High
    // If Annual Revenue is between 500000 - 1000000 then assign Rating = Warm and CustomerPriority = Medium
    // If Annual Revenue is less than 500000 then Rating=Cold and CustomerPriority = Low 

    //Steps : 
    // 1. Create a empty form
    // 2. Grap the data from user
    // 3. Assign the values for Rating and CP
    // 4. Prepare the data
    // 5. Use createRecord function.

    