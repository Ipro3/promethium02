
view: hivepublic_promethium_dim_agent {
dimension: agent_record_key {
 type: integer
 sql: ${TABLE}.agent_record_key;;
}
dimension: agent_id {
 type: varchar
 sql: ${TABLE}.agent_id;;
}
dimension: csr_id {
 type: varchar
 sql: ${TABLE}.csr_id;;
}
dimension: agent_supervisor_record_key {
 type: integer
 sql: ${TABLE}.agent_supervisor_record_key;;
}
dimension: agent_supervisor_csr_id {
 type: varchar
 sql: ${TABLE}.agent_supervisor_csr_id;;
}
dimension: agent_status {
 type: varchar
 sql: ${TABLE}.agent_status;;
}
dimension: agent_role_start_date {
 type: date
 sql: ${TABLE}.agent_role_start_date;;
}
dimension: agent_role_end_date {
 type: date
 sql: ${TABLE}.agent_role_end_date;;
}
dimension: agent_role_sms {
 type: varchar
 sql: ${TABLE}.agent_role_sms;;
}
dimension: agent_role_marketing {
 type: varchar
 sql: ${TABLE}.agent_role_marketing;;
}
dimension: agent_location {
 type: varchar
 sql: ${TABLE}.agent_location;;
}
dimension: agent_vendor {
 type: varchar
 sql: ${TABLE}.agent_vendor;;
}
dimension: agent_site {
 type: varchar
 sql: ${TABLE}.agent_site;;
}
dimension: agent_lob {
 type: varchar
 sql: ${TABLE}.agent_lob;;
}
dimension: activation_source {
 type: varchar
 sql: ${TABLE}.activation_source;;
}
dimension: current_record_flag {
 type: varchar
 sql: ${TABLE}.current_record_flag;;
}
dimension: deleted_record_flag {
 type: varchar
 sql: ${TABLE}.deleted_record_flag;;
}
}