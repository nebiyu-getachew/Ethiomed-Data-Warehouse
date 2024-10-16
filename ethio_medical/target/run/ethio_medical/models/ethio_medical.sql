
  
    

  create  table "telegram"."public"."ethio_medical__dbt_tmp"
  
  
    as
  
  (
    -- models/ethio_medical.sql
  -- Correcting the materialization syntax

WITH source_data AS (
    SELECT * 
    FROM "telegram"."public"."ethio_medical"  -- Use DBT's source function
)

SELECT
    channel_title,
    lower(channel_username) AS channel_username,
    message_id,
    "Message",
    date,
    media_path
FROM source_data
WHERE "Message" IS NOT NULL
  );
  