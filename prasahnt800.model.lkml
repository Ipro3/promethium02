
connection: "pmdevpresto"
include: "/views/*.view.lkml"


explore: "ds1_orcl"_"RDSORACLEFORPRESTO"_"FACT_SUBSCRIPTION_ACTIVITY" {

join: "ds1_orcl"_"RDSORACLEFORPRESTO"_"DIM_AGENT" {
 relationship: one_to_one
 sql_on: ${DIM_AGENT.AGENT_RECORD_KEY} = ${FACT_SUBSCRIPTION_ACTIVITY.AGN_KEY} ;;
}
}