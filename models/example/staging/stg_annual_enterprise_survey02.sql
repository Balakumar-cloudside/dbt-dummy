WITH
survey AS (
SELECT * FROM `graphite-dynamo-432313-f5.dbt_db_bala.annual-enterprise-survey01`),

n AS ( 
SELECT 
    id,
    year AS Year,
    industry_code_ANZSIC AS Industry_code,
    industry_name_ANZSIC AS Industry_name,
    rme_size_grp AS Size_group,
    variable AS Variable,
    value,
    unit AS Units
FROM survey
)

SELECT * FROM n
