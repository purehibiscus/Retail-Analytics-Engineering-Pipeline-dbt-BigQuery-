with fct_transactions as (
	SELECT 
		trans_id,
		cust_id,
		order_id,
		prod_id,
		order_date,
		price,
		quantity
	FROM {{ref('orders')}}	
)