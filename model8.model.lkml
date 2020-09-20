
connection: "mysql-qa"
: "/views/*.view.lkml"                # include all views in the views/ folder in this project



explore: "dim_agent" {

}view: {hivepublic.promethium.dim_agentdimension: agent_record_key {
 type: Integer
 sql: ${TABLE}.agent_record_key;;}dimension: agent_id {
 type: Object
 sql: ${TABLE}.agent_id;;}dimension: csr_id {
 type: Object
 sql: ${TABLE}.csr_id;;}dimension: agent_supervisor_record_key {
 type: Integer
 sql: ${TABLE}.agent_supervisor_record_key;;}dimension: agent_supervisor_csr_id {
 type: Object
 sql: ${TABLE}.agent_supervisor_csr_id;;}dimension: agent_status {
 type: Object
 sql: ${TABLE}.agent_status;;}dimension: agent_role_start_date {
 type: Date
 sql: ${TABLE}.agent_role_start_date;;}dimension: agent_role_end_date {
 type: Date
 sql: ${TABLE}.agent_role_end_date;;}dimension: agent_role_sms {
 type: Object
 sql: ${TABLE}.agent_role_sms;;}dimension: agent_role_marketing {
 type: Object
 sql: ${TABLE}.agent_role_marketing;;}dimension: agent_location {
 type: Object
 sql: ${TABLE}.agent_location;;}dimension: agent_vendor {
 type: Object
 sql: ${TABLE}.agent_vendor;;}dimension: agent_site {
 type: Object
 sql: ${TABLE}.agent_site;;}dimension: agent_lob {
 type: Object
 sql: ${TABLE}.agent_lob;;}dimension: activation_source {
 type: Object
 sql: ${TABLE}.activation_source;;}dimension: current_record_flag {
 type: Object
 sql: ${TABLE}.current_record_flag;;}dimension: deleted_record_flag {
 type: Object
 sql: ${TABLE}.deleted_record_flag;;}
}