-- Dhaqangelinta Row-Level Security (RLS) si loo xakameeyo amniga xogta

-- 1. Daaran RLS miiska orders
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;

-- 2. Abuurista Policy u oggolaanaysa isticmaalaha inuu arko oo kaliya dalabaadkiisa
-- (Tusaale ahaan adoo isticmaala app_user oo ku xiran customer_id)
CREATE POLICY customer_isolation_policy ON orders
    USING (customer_id = current_setting('app.current_customer_id', true)::INT);
