using {Order, OrderItem} from '../db/schemas';

service sandbox {
    entity OrderSet as projection on Order {
        *,
        SUM(items.price) as total: Decimal
    } group by ID;
    
    entity OrderItemSet as projection on OrderItem;
}