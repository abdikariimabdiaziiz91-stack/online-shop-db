-- Abuurista Tusmooyinka (Indexes) si loo dardargeliyo raadinta xogta

-- 1. Index loogu talagalay raadinta iimaylka macaamiisha (si looga hortago seq scan inta lagu jiro login/lookup)
CREATE INDEX idx_customers_email ON customers(email);

-- 2. Index loogu talagalay dalabaadka macaamiisha (si loo ogaado dhammaan dalabaadka user gaar ah)
CREATE INDEX idx_orders_customer_id ON orders(customer_id);

-- 3. Index loogu talagalay taariikhda dalabaadka (si loo fududeeyo warbixinta iibka ee ku saleysan waqtiga)
CREATE INDEX idx_orders_order_date ON orders(order_date);

-- 4. Index loogu talagalay order_items si loo xiriiriyo dalabaadka iyo alaabta si degdeg ah
CREATE INDEX idx_order_items_order_id ON order_items(order_id);
CREATE INDEX idx_order_items_product_id ON order_items(product_id);
