{{ config(
    materialized='incremental'
    , incremental_strategy='delete+insert'
    , unique_key='SUPPLIER_ID'
)}}
select *
from sourcetable