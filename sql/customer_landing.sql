CREATE EXTERNAL TABLE IF NOT EXISTS customer_landing (
    serialnumber STRING,
    sharewithpublicasofdate STRING,
    birthday STRING,
    registrationdate BIGINT,
    sharewithresearchasofdate STRING,
    customername STRING,
    email STRING,
    lastupdatedate BIGINT,
    phone STRING,
    sharewithfriendsasofdate STRING
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://stedi-human-balance-123/customer_landing/'
TBLPROPERTIES ('classification'='json');
