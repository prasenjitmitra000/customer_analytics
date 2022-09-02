view: customer_transformation {
  sql_table_name: `mi-4-305707.customer_analytics.customer_transformation`
    ;;

  dimension: cluster_name_x {
    type: string
    label: "Cluster Period 1"
    sql: ${TABLE}.Cluster_name_x ;;
  }

  dimension: cluster_name_y {
    type: string
    label: "Cluster Period 2"
    sql: ${TABLE}.Cluster_name_y ;;
  }

  dimension: cluster_rank_x {
    type: number
    sql: ${TABLE}.Cluster_rank_x ;;
  }

  dimension: cluster_rank_y {
    type: number
    sql: ${TABLE}.Cluster_rank_y ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
    value_format_name: id
  }

  dimension: frequency_x {
    type: number
    sql: ${TABLE}.frequency_x ;;
  }

  dimension: frequency_y {
    type: number
    sql: ${TABLE}.frequency_y ;;
  }

  dimension: monetary_x {
    type: number
    sql: ${TABLE}.monetary_x ;;
  }

  dimension: monetary_y {
    type: number
    sql: ${TABLE}.monetary_y ;;
  }

  dimension: recency_x {
    type: number
    sql: ${TABLE}.recency_x ;;
  }

  dimension: recency_y {
    type: number
    sql: ${TABLE}.recency_y ;;
  }

  dimension: rfm_score_x {
    type: number
    label: "Rfm Period 1"
    sql: ${TABLE}.RFM_Score_x ;;
    value_format_name: decimal_2
  }

  dimension: rfm_score_y {
    type: number
    label: "Rfm Period 2"
    sql: ${TABLE}.RFM_Score_y ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: customer_id_measure {
    type: count_distinct
    label: "Customer Id"
    sql: ${customer_id} ;;
    drill_fields: [cluster_name_x,rfm_score_x,customer_id,cluster_name_y,rfm_score_y]
  }
}
