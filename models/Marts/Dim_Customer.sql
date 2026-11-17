with Customer as 
(

    select * from {{ref('Stg_Customer')}}
),
orders as 
(

    select * from {{ref('Stg_Orders')}}
),
customer_order  as 
(

    select  *
    from    Customer as c
    join    orders as o
     using (customer_id)
) 

select * from customer_order