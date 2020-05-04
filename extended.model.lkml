include: "/views/*.view.lkml"
include: "base.model.lkml"

connection: "the_look_redshift"

fiscal_month_offset: 2

explore: products {}

explore: order_items {
  extends: [order_items_base]
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.created_year} ;;
    relationship: one_to_one
  }
}
