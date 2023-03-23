import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {
    fruits=["Banana","Apple","Mango","Cherry"];
    
    clickHandler(){
        //h1 - querySelector demo
       const h1elem= this.template.querySelector("h1");
       console.log(h1elem.innerText);
       h1elem.style.color="Maroon";
       h1elem.style.backgroundColor="PaleGreen";
       h1elem.style.border="2px solid Purple ";
       //p - querySelector demo

       const pelem=this.template.querySelector("p");
       console.log(h1elem.innerText);
       pelem.style.color="black";
       pelem.style.backgroundColor="orange";
       pelem.style.border="3px solid black ";

       // querySelectorAll demo

       const divElems=this.template.querySelectorAll("div.child");
       divElems.forEach(item => {
        console.log(item.innerText);
        item.style.color="PowderBlue";
        item.setAttribute("class","slds-align_absolute-center");
        item.style.backgroundColor="Teal"
        item.style.border="2px solid SlateBlue ";

       } );

       const buttonElem=this.template.querySelector("lightning-button");
       buttonElem.label = "Don't Click Again!! ";
       buttonElem.variant="destructive";
       
       
       

       






    }
}