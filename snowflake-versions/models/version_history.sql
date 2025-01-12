{{ config(
    materialized='incremental',
    unique_key='version_id'
) }}

{% if not is_incremental() %}
-- Initial load
select 
    current_version() as version_id,
    current_timestamp() as recorded_at
{% else %}
-- Subsequent loads
select 
    current_version() as version_id,
    current_timestamp() as recorded_at
where version_id not in (select version_id from {{ this }})
{% endif %}
