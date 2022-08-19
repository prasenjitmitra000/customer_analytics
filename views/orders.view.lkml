view: orders {
  # # You can specify the table name if it's different from the view name:
   sql_table_name:`bigquery-public-data.thelook_ecommerce.orders`
     ;;

   dimension: order_id {
     type: number
     sql: ${TABLE}.order_id ;;
   }

   dimension: user_id {
     type: number
     sql: ${TABLE}.user_id ;;
   }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: created_at {
    type: date_time
    sql: ${TABLE}.created_at ;;
  }

  dimension: returned_at {
    type: date_time
    sql: ${TABLE}.returned_at ;;
  }

  dimension: shipped_at {
    type: date_time
    sql: ${TABLE}.shipped_at ;;
  }

  dimension: delivered_at {
    type: date_time
    sql: ${TABLE}.delivered_at ;;
  }

  dimension: num_of_item {
    type: number
    sql: ${TABLE}.num_of_item ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

 }
