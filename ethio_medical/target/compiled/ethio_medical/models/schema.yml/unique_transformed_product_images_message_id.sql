
    
    

select
    message_id as unique_field,
    count(*) as n_records

from "telegram"."public"."transformed_product_images"
where message_id is not null
group by message_id
having count(*) > 1


