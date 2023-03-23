import { LightningElement } from 'lwc';
import logInTemplate from './logintemplate.html';
import signUpTemplate from './signuptemplate.html';
import mainTemplate from './renderMethod.html';



export default class RenderMethod extends LightningElement {

    selectedButton;

    clickHandler(event){
        this.selectedButton=event.target.label;

    }

    mainHandler(){
        this.selectedButton=mainTemplate;

    }
    
    
    render(){
       if(this.selectedButton === "LogIn"){
        return logInTemplate;

       }else if(this.selectedButton === "Singup"){
        return signUpTemplate;

       }else{
        return mainTemplate;
       }  
        
    }

   

    

    

}