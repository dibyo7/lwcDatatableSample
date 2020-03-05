import { LightningElement, track } from 'lwc';
import fetchDataHelper from './fetchDataHelper';

const columns = [
    {label: 'CName', fieldName: 'name'},
    {label: 'Website', fieldName: 'website', type: 'url'},
    {label: 'Phone', fieldName: 'phone', type: 'phone'},
    {label: 'Balance', fieldName: 'amount', type: 'currency'},
    {label: 'CloseAt', fieldName: 'closeAt', type: 'date'},
];

export default class DatatableLwc extends LightningElement {
    @track data =[];
    @track columns = columns;

    async connectedCallback(){
        const data = await fetchDataHelper({ amountOfRecords: 100});
        this.data = data;
    }
}