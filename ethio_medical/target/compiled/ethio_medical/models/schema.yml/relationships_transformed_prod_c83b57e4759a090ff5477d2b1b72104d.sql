
    
    

with child as (
    select message_id as from_field
    from "telegram"."public"."transformed_product_images"
    where message_id is not null
),

parent as (
    select product_id as to_field
    from "telegram"."public"."transformed_product"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


