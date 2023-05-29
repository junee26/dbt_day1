SELECT *
    FROM DBT_JUNEE26.person
    WHERE id = '{{ var ('data_variable') }}'
