connection: "the_look_redshift"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: users{}

explore: order_items_base {
  from: order_items
  view_name: order_items
  extension: required
}
