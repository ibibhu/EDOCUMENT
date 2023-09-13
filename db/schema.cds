namespace sap.in.edocument;

using {managed} from '@sap/cds/common';

type EmailAddress : { kind:String; address:String; }

entity SupplierInvoice : managed {
    key ID                 : UUID @(Core.Computed: true);
        SupplierInvoice    : String(10) not null;
        FiscalYear         : String(4) not null;
        CompanyCode        : String(4) not null;
        DocumentDate       : Date;
        PostingDate        : Date;
        CreationDate       : Date;
        InvoiceGrossAmount : Decimal(3, 3);
        BusinessPartner    : String(10) not null;
        ObjectStore        : UUID not null;
}


entity BusinessPartner : managed {
    key ID       : UUID @(Core.Computed: true);
        Customer : String(10) not null; // Key identifying a business partner in the SAP system. The key is unique within a client.
        Supplier : String(10) not null; // Gives an alphanumeric key, which clearly identifies the customer or vendor in the SAP system.
        BusinessPartnerFullName : String(81);
        BusinessPartnerUUID : UUID not null;
        CreationDate : Date;
        CreationTime : Time;
        Email   : String not null; 
}
