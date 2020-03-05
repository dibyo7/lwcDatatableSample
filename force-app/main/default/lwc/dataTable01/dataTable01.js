import { track, wire, LightningElement } from 'lwc';
import getContacts from '@salesforce/apex/Poc.getContacts';

const columns = [
    { label: 'Id', fieldName: 'Id' },
    { label: 'Name', fieldName: 'Name', type: 'text', storable: true},
    { label: 'AccountId', fieldName: 'AccountId', type: 'Id'},
    { label: 'Email', fieldName: 'Email', type: 'email'},
];

export default class DataTable01 extends LightningElement {
    @track data = [];
    @track columns = columns;

    @wire(getContacts, {})
    ApexResponse({ error, data}){
        if(data) {
            this.data = data;
        }else if(error){
            //test
        }
        
    }
}