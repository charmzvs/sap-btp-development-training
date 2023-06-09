using epam.sap.dev.orderbook as book from '../db/schema';
using sap.common as common from '@sap/cds/common';

service OrderBookService {
    entity BookOrders as projection on book.BookOrders actions {
        action sendBook();
        action approvedBook();
    };
    entity Statuses as projection on book.Statuses;
}

service TechnicalService @(requires : 'any') {
    entity BookOrders as projection on book.BookOrders;
    entity Statuses as projection on book.Statuses;
    entity Currencies as projection on common.Currencies;
}
