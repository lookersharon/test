connection: "the_look_redshift"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "base.model.lkml"

explore: users{}

explore: order_items {}
