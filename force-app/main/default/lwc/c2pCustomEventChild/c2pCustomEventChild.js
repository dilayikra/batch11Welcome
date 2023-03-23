//Task : Create a Counter Component
//Parent : Show Counter Value and do increment/decrement
//Child : Create Add and Subtract buttons.Dispatch Custom Event.

import { LightningElement } from 'lwc';

export default class C2pCustomEventChild extends LightningElement {

    handleSubtract(){
        //create a custom Event of name as "Subtraction"
        const subtractEvent=new CustomEvent('subtraction');
        this.dispatchEvent(subtractEvent);

    }

    handleAdd(){
        const addEvent=new CustomEvent('addition');
        this.dispatchEvent(addEvent);


    }
}