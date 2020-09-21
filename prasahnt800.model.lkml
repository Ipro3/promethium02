
connection: "pmdevpresto"
include: "/views/*.view.lkml"


explore: "FACT_SUBSCRIPTION_ACTIVITY" {

join: "DIM_AGENT" {
 relationship: one_to_one
 sql_on: ${"DIM_AGENT"."AGENT_RECORD_KEY"} = ${"FACT_SUBSCRIPTION_ACTIVITY"."AGN_KEY"}
}
}