import { LightningElement } from 'lwc';

export default class GrandParentComp extends LightningElement {
    message;
    showHandler(event){
        console.log("RECEIVED SHOW EVENT AT GRANDPARENT COMP!");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
        this.message=event.detail;
    }
}