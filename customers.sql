with customers as (
	SELECT 
		customer_id as cust_id,
		first_name,
		last_name,
		age,
		gender,
		profession,
		country
		
	FROM {{ref('customer_demographics')}}
)

