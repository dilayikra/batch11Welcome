import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import getMatchingOpps from '@salesforce/apex/OpportunityCtrl.getMatchingOpps';

const COLUMNS = [
    { label: 'Opportunity Name', fieldName: 'Name', type:'text' },
    { label: 'Type', fieldName: 'Type', type: 'text' },
    { label: 'Stage Name', fieldName: 'StageName', type: 'text' },
    { label: 'Amount', fieldName: 'Amount', type: 'currency' }
];



export default class ImperativeApex1 extends LightningElement {
    stageOptions;
    opps;
    error;
    columns=COLUMNS;

    @wire(getObjectInfo, {objectApiName:OPP_OBJECT})
    oppInfo;
    
    @wire(getPicklistValues,{fieldApiName:STAGE_FIELD,recordTypeId:'$oppInfo.data.defaultRecordTypeId'})
    picklistHandler({data,error}){
        if (data) {
            this.stageOptions =data.values;
        }
        if(error){
            console.log(error);
        }
    }

    changeHandler(event){
        const selectedStage=event.target.value;

        getMatchingOpps({stage : selectedStage})
        .then(result => {
            this.opps=result;
        })
        .catch(error => {
            this.error=error;

        })
    }
    
}