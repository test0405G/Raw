with Customer as 
(
    select  id AS Customer_id, 
            FIRST_NAME AS FIRST_NAME,
            LAST_NAME  AS LAST_NAME,
            concat(LAST_NAME,FIRST_NAME) AS FULL_NAME
    from    raw.jaffle_shop.customers
)

select * from Customer