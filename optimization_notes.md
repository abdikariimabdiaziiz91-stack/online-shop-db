# Query Optimization & EXPLAIN ANALYZE Evidence (Day 4)

## Query 1: Raadinta Dalabaadka Macmiil Gaar ah
1. **QUERY:** Helitaanka dhammaan dalabaadka iyo wadarta lacagta ee macmiilka iimaylkiisu yahay 'axmed.cali@email.com'.
2. **BEFORE PLAN (Haddii uusan index jirin):** 
   - Seq Scan on customers (cost=0.00..18.10 rows=1 width=4)
   - Seq Scan on orders (cost=0.00..22.00 rows=3 width=12)
   - Execution Time: ~4.2 ms
3. **CHANGE:** Waxaa la isticmaalay `idx_customers_email` iyo `idx_orders_customer_id` si looga fogaado Seq Scan oo loogu beddelo Index Scan.
4. **AFTER PLAN:**
   - Index Scan using idx_customers_email on customers (cost=0.15..8.17 rows=1 width=4)
   - Index Scan using idx_orders_customer_id on orders (cost=0.15..8.17 rows=3 width=12)
5. **RESULT:** 4.2ms -> 0.6ms, Seq Scan -> Index Scan.
