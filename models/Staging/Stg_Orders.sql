WITH ORDERS AS 
(
    SELECT  *
    FROM    {{ source('jaffle_shop', 'orders') }}

), final as 
(

    SELECT  ID          AS   ORDER_ID,
            USER_ID     AS   CUSTOMER_ID,
            order_date,
            status,
            _etl_loaded_at
    FROM   ORDERS
)

SELECT * FROM final