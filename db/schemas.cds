entity Order {
    key ID        : Integer;
        orderedBy : String;

        items: Composition of many OrderItem on items.order = $self;
}

entity OrderItem {
    key ID    : Integer;
        name  : String;        
        price : Decimal;

        order: Association to one Order;
}
