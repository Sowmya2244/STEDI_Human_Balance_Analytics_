CREATE EXTERNAL TABLE IF NOT EXISTS accelerometer_landing (
    timestamp BIGINT,
    user STRING,
    x DOUBLE,
    y DOUBLE,
    z DOUBLE
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://stedi-human-balance-123/accelerometer_landing/'
TBLPROPERTIES ('classification'='json');
