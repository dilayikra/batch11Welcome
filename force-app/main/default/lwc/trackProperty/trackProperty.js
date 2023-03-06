import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {
        city : "Istanbul",
        country : "Turkey"
    };

    changeHandler(event){
        this.location.city = event.target.value;
    }
}