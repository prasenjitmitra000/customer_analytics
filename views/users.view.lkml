view: users {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.users`
    ;;

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: monetary {
    type: number
    sql: ${TABLE}.monetary ;;
  }

  dimension: recency {
    type: number
    sql: ${TABLE}.recency ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
