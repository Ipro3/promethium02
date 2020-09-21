
connection: "pmdevpresto"
include: "/views/*.view.lkml"


explore: sforce_SFORCE_OPPORTUNITY {

join: sforce_SFORCE_ACCOUNT {
 relationship: one_to_one
 sql_on: ${sforce_SFORCE_ACCOUNT.MASTERRECORDID} = ${sforce_SFORCE_OPPORTUNITY.ACCOUNTID} ;;
}
}