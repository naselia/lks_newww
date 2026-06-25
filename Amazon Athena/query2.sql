CREATE EXTERNAL TABLE IF NOT EXISTS lks_analytics.transactions (
    transaction_id string;
    user_id string;
    amount bigint;
    status_ai bigint;
    processed_at bigint
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://transaction.buckets/raw-transactions';