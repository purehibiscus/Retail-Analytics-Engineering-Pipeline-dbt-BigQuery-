with orders as (
	SELELCT 
		order_id,
		prod_id,
		cust_id,
		prod_id,
		store_location_id,
		CAST(order_date AS DATE) AS order_date,
		CAST(delivery_date AS DATE) AS delivery_date,
		order_status,
		delivery_type,
		price,
		quantity
	FROM {{ref('orders')}}
)
