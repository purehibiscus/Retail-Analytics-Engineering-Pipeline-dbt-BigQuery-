with product as (
	SELECT 
		prod_id,
		product,
		product_category as category,
		product_sub-category as sub-category,
		price
	FROM {{ref('product')}}
)