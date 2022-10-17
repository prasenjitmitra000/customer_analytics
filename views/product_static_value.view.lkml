view: product_static_value {
  sql_table_name: `mi-4-305707.customer_analytics.product_static_value`
    ;;

  dimension: dummy_text {
    type: number
    sql: ${TABLE}.dummy_text ;;
  }

  dimension: val {
    label: "Insights"
    type: string
    sql: ${TABLE}.val ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
