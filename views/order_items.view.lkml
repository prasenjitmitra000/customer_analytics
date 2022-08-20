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

  dimension: months {
    type: number
    sql: EXTRACT(MONTH FROM ${TABLE}.created_at) ;;
  }
  dimension: months_in_name {
    type: string
    sql: case when ${months} =1 then 'Jan'
              when ${months} =2 then 'Feb'
              when ${months} =3 then 'Mar'
              when ${months} =4 then 'Apr'
              when ${months} =5 then 'May'
              when ${months} =6 then 'Jun'
              when ${months} =7 then 'Jul'
              when ${months} =8 then 'Aug'
              when ${months} =9 then 'Sep'
              when ${months} =10 then 'Oct'
              when ${months} =11 then 'Nov'
              when ${months} =12 then 'Dec' end
    ;;
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
