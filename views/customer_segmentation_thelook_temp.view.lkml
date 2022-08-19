view: customer_segmentation_thelook_temp {
  sql_table_name: `mi-4-305707.customer_analytics.customer_segmentation_thelook_temp`
    ;;

  dimension: cluster {
    type: number
    sql: ${TABLE}.cluster ;;
  }

  dimension: clv {
    type: number
    sql: ${TABLE}.clv ;;
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
