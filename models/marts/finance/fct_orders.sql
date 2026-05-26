
SELECT
    o.order_id,
    SUM(p.amount) as sum_amount

FROM {{ ref('stg_jaffle_shop__orders') }} as o
    LEFT JOIN {{ ref('stg_stripe__payment') }} as p
        ON o.order_id = p.orderid AND p.status = 'success'
GROUP BY
    o.order_id
