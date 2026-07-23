{% test minimum_row_counts(model, min_row_count) %}
{{ config(severity = 'warn' )}}
select
    count(*) as cnt
from 
    {{ model }}
having
    cnt < {{ min_row_count }}
{% endtest %}