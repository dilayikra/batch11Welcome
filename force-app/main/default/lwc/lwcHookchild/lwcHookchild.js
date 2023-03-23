import { LightningElement } from 'lwc';

export default class LwcHookchild extends LightningElement {
    constructor(){
        super();
        console.log("Child constructor hook is called.");
    }

    connectedCallback(){
        console.log("Child connectedCallBack hook is called.");
    }

    renderedCallback(){
        console.log("Child renderedCallback hook is called.");
    }
}








