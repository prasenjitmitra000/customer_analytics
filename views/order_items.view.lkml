view: order_items {
  sql_table_name:`bigquery-public-data.thelook_ecommerce.order_items`
    ;;

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: hours {
    type: number
    sql: EXTRACT(HOUR FROM ${TABLE}.created_at) ;;
  }


  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.created_at ;;
  }

  dimension: shipped_at {
    type: date_time
    sql: ${TABLE}.shipped_at ;;
  }

  dimension: delivered_at {
    type: date_time
    sql: ${TABLE}.delivered_at ;;
  }

  dimension: returned_at {
    type: date_time
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sale_price_sum {
    type: sum
    sql: ${sale_price} ;;
    html: @{big_money_format} ;;
  }

  measure: sale_price_sum_1 {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: usd_0
  }

 }
