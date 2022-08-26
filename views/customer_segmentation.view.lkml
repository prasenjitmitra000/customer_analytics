view: customer_segmentation {
  sql_table_name: `mi-4-305707.customer_analytics.customer_segmentation`
    ;;

  dimension: cluster_name {
    type: string
    sql: ${TABLE}.Cluster_name ;;
  }

  dimension: clv {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.clv ;;
  }

  dimension: customer_id {
    type: string
    #value_format_name: id
    sql: cast(${TABLE}.CustomerID as string) ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: monetary {
    type: number
    sql: ${TABLE}.monetary ;;
    html: @{big_money_format} ;;
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
    drill_fields: [customer_id, recency, frequency, monetary, rfm_score, clv]
  }
}
