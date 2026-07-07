CREATE EXTERNAL TABLE IF NOT EXISTS step_trainer_landing (
    sensorreadingtime BIGINT,
    serialnumber STRING,
    distancefromobject DOUBLE
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://stedi-human-balance-123/step_trainer_landing/'
TBLPROPERTIES ('classification'='json');
