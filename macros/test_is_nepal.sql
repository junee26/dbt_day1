{% test is_nepal(model, column_name) %}

    with
        validation as (select {{ column_name }} as country from {{ model }}),
        validation_errors as (select country from validation where country = 'Nepal12')

    select *
    from validation_errors

{% endtest %}