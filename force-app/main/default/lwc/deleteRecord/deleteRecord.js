import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DeleteRecord extends LightningElement {
    recordId;

    changeHandler(event){
        this.recordId=event.target.value;
    }
    
    deleteHandler(){
        const recordId=this.recordId;
        
        
        deleteRecord(this.recordId)
        .then(result => {
            console.log(result);
            this.displayToast("Success","The Record Has Been Deleted!","success");

        })
        .catch(error => {
            console.log(error);
            this.displayToast("Error",error.body.message ,"error");

        })
    }
    displayToast(title,message,variant){
        const toast = new ShowToastEvent({title ,message ,variant});
        this.dispatchEvent(toast);

    }

    

}