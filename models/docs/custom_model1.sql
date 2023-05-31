-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

with source_data as (

    select 1 as id,'nitesh' as name ,23 as age
    union all
    select 1 as id,'nimesh' as name ,23 as age

)

select *
from source_data