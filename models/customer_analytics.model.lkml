connection: "thelook_ecommerce_looker-mi4"

include: "/views/**/*.view"

datagroup: customer_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customer_analytics_default_datagroup

explore:  users {}
explore:  orders {}
explore:  order_items {}
