view: customer_segmentation {
  sql_table_name: `mi-4-305707.customer_analytics.customer_segmentation`
    ;;

  dimension: cluster_name {
    type: string
    sql: ${TABLE}.Cluster_name ;;
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

  dimension: rfm_score {
    type: number
    sql: ${TABLE}.RFM_Score ;;
  }

  measure: count {
    type: count
    drill_fields: [cluster_name]
  }
}
