
connection: "pmdevpresto"
include: "/views/*.view.lkml"


explore: ds1_orcl_RDSORACLEFORPRESTO_FACT_SUBSCRIPTION_ACTIVITY {

join: ds1_orcl_RDSORACLEFORPRESTO_DIM_AGENT {
 relationship: one_to_one
 sql_on: ${"ds1_orcl"."RDSORACLEFORPRESTO"."DIM_AGENT"."AGENT_RECORD_KEY"} = ${"ds1_orcl"."RDSORACLEFORPRESTO"."FACT_SUBSCRIPTION_ACTIVITY"."AGN_KEY"}
}
}