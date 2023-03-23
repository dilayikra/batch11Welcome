import { LightningElement } from 'lwc';

export default class C2pCustomEventParameterParent extends LightningElement {

    progressValue;
    flag=false;


    progressHandler(event){
        console.log(event);
        if(event.detail >= 0 && event.detail <=100){
            this.progressValue =event.detail;
            this.flag=false;
        }else{
            this.flag=true;
            
        }
        
    }
}