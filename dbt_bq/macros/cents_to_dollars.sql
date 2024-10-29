{% macro cents_to_dollars(column) %}

    round(cast(( {{column}} /100) as numeric), 2)

{% endmacro %}
