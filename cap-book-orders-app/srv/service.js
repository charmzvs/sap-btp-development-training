const cds = require('@sap/cds');


module.exports = cds.service.impl(async function () {

    let { BookOrders } = this.entities;

    this.before('CREATE', 'BookOrders', async (req) => {
        const { maxID } = await SELECT.one`max(bookOrderID) as maxID`.from(BookOrders);
        req.data.bookOrderID = maxID + 1;
    });




})
