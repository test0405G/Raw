WITH ORDERS AS 
(
    SELECT  ID          AS   ORDER_ID,
            USER_ID     AS   CUSTOMER_ID,
            order_date,
            status,
            _etl_loaded_at
    FROM    raw.jaffle_shop.orders

)

SELECT * FROM ORDERS