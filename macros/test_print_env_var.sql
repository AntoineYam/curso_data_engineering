{% macro test_print_env_var() %}
  {{ log(env_var('DBT_ENVIRONMENTS'), info=True) }}
{% endmacro %}