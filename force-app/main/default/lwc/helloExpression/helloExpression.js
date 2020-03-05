import { LightningElement,track } from 'lwc';
export default class HelloExpression extends LightningElement {
    @track greeting = 'Dibyo';
    changeHandler(event){
        this.greeting = event.target.value;
    }
}