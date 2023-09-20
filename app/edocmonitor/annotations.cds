using EdocService as service from '../../srv/edoc-service';

annotate service.SupplierInvoice with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : ObjectStore,
            Label : 'ObjectStore',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : SupplierInvoice,
            Label : 'SupplierInvoice',
            ![@UI.Importance] : #Low,
        },
    ]
);
