import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import {ShowToastEvent } from 'lightning/platformShowToastEvent';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';

export default class ContactCreator extends LightningElement {

    objectApiName = CONTACT_OBJECT;
        fields = [FIRSTNAME_FIELD, LASTNAME_FIELD, EMAIL_FIELD];
        handleSuccess(event) {
            const toastEvent = new ShowToastEvent({
                title: "Contact created",
                message: "Record ID: " + event.detail.id,
                variant: "success"
            });
            this.dispatchEvent(toastEvent);
        }
    }