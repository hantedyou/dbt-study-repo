{% test minimum_row_counts(model, min_row_count) %}
select
    count(*) as cnt
from 
    {{ model }}
having
    cnt < {{ min_row_count }}
{% endtest %}