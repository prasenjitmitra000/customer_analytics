view: products {
    sql_table_name: `bigquery-public-data.thelook_ecommerce.users`
      ;;

    dimension: id {
      type: number
      sql: ${TABLE}.id ;;
    }

    dimension: cost {
      type: number
      sql: ${TABLE}.cost ;;
    }

    dimension: category {
      type: string
      sql: ${TABLE}.category ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}.name ;;
    }

    dimension: brand {
      type: number
      sql: ${TABLE}.brand ;;
    }

    dimension: retail_price {
      type: number
      sql: ${TABLE}.retail_price ;;
    }

    dimension: department {
      type: string
      sql: ${TABLE}.department ;;
    }

    dimension: sku {
      type: string
      sql: ${TABLE}.sku ;;
    }

    dimension: distribution_center_id {
      type: number
      sql: ${TABLE}.distribution_center_id ;;
    }

    measure: count {
      type: count
      drill_fields: []
    }
  }
