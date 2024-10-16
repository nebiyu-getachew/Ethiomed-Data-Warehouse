-- models/transformed_product_images.sql


WITH source_data AS (
    SELECT
        channel_username,
        contact_phone_numbers
    FROM "telegram"."public"."transformed_medical_product"
    WHERE contact_phone_numbers IS NOT NULL AND contact_phone_numbers != ''  -- Filter out any null or empty paths
)

SELECT DISTINCT ON (channel_username)  -- Ensure unique channel usernames
    channel_username,
    contact_phone_numbers  -- Rename the column to be clearer
FROM source_data