import { LightningElement } from 'lwc';

export default class SliderParent extends LightningElement {
    value;


    changeHandler(event){
        this.value=event.target.value;

    }

    clickHandler(){
        this.value=0;
        this.template.querySelector("c-slider").resetSlider();
    }
}