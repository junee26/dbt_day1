{{ config(
    materialized='incremental'
    , unique_key='supplier_id'
)}}
select *
from sourcetable