{% macro extract_period(column, period) %}

    EXTRACT( {{period}}  FROM CAST( {{column}}  AS TIMESTAMP))

{% endmacro %}
