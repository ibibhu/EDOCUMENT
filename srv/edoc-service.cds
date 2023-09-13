using { sap.in.edocument as edoc } from '../db/schema';

service EdocService {
    entity SupplierInvoice as projection on edoc.SupplierInvoice;
    entity BusinessPartner as projection on edoc.BusinessPartner;        
}