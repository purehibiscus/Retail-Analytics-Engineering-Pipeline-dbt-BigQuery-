with store as (
	SELECT  
		store_location_id,
		store_id,
		store_name,
		store_address,
		country
	FROM {{ref('store')}}
)
