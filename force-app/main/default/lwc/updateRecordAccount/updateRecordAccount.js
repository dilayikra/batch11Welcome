import { LightningElement, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';


export default class UpdateRecordAccount extends LightningElement {
    
    recordId="0018d00000UX8IOAA1";
    typeOptions = [];
    industryOptions = [];

    @wire(getObjectInfo, {objectApiName : ACCOUNT_OBJECT })
    accInfo;
    @wire(getPicklistValuesByRecordType, {objectApiName : ACCOUNT_OBJECT,recordTypeId :'$accInfo.data.defaultRecordTypeId'})

    picklistHandler({data,error}){
        if(data){
            this.typeOptions=data.picklistFieldValues.Type.values;
            this.industryOptions=data.picklistFieldValues.Industry.values;

        }
        if(error){
            console.log(error);
        }
        
        
    }


    changeHandler(event){

    }

    saveAccount(){

    }
}