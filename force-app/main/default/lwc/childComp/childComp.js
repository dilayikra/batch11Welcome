import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {

    clickHandler(){
        //create an event and dispatch the same
        console.log("BEFORE CREATING THE EVENT!");

        const showEvent= new CustomEvent("show",{detail :"Greeting from child component" ,bubbles : true,composed : true});
        this.dispatchEvent(showEvent);

        console.log("CREATED AND DISPATCHED THE EVENT!");
    }
}