SELECT *
FROM {{ ref('stg_sql_server_dbo__orders') }}
WHERE delivered_at_utc < created_at_utc