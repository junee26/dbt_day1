select one.id as idone from {{ source('legacy', 'table1') }}
 as
one join {{ source('legacy', 'table2') }}
 as two on one.id=two.id