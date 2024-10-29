{% macro cents_to_dollars(column_name) %}
    CAST({{ column_name }} / 100 AS NUMERIC)
{% endmacro %}
