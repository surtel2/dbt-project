
SELECT
    id,
    orderid,
    paymentmethod,
    status,
    amount,
    created,
    _batched_at
FROM {{ source('stripe', 'payment') }}


