import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {

    showHandler1(event){
        console.log("RECEIVED SHOW EVENT AT PARENT COMP!");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);

    }

    showHandler2(event){
        console.log("RECEIVED SHOW EVENT AT PARENT COMP DIV TAG!");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);

    }

}