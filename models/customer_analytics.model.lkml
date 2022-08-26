connection: "thelook_ecommerce_looker-mi4"

include: "/views/**/*.view"

datagroup: customer_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customer_analytics_default_datagroup


explore:customer_segmentation_thelook_temp{}
explore:customer_transformation{}
explore:  customer_segmentation {}
explore:  users {}
explore:  products {}
explore:  orders {}
explore:  order_items {
  join: users {
    view_label: "User"
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id}  ;;
    relationship: many_to_one
  }
  join: orders {
    view_label: "Order"
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.order_id}  ;;
    relationship: many_to_one
  }
  join: products {
    view_label: "Product"
    type: left_outer
    sql_on: ${order_items.product_id} = ${products.id}  ;;
    relationship: many_to_one
  }
  join: customer_segmentation_thelook_temp {
    view_label: "Customer Segmentation"
    type: left_outer
    sql_on: ${customer_segmentation_thelook_temp.customer_id} = ${users.id}  ;;
    relationship: many_to_one
  }
}
