const cds = require("@sap/cds");

module.exports = cds.service.impl(async function(){

    // this.on("*", req=>{
    //     //req.
    // });

    this.after('READ','SupplierInvoice', SupplierInvoice => {
        //console.table(SupplierInvoice);
    });
});