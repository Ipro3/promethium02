connection: "mysql-qa"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: employee{
  join: employeeaddress {
    relationship: one_to_one
    sql_on: ${employee.employee_id} = ${employeeaddress.employee_id} ;;
  }

  join: address {
    relationship: one_to_one
    sql_on:  ${address.address_id} = ${employeeaddress.address_id};;
  }
}

view: employee {
  sql_table_name: adventureworks.employee ;;
  drill_fields: [employee_id]

  dimension: employee_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BirthDate ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.ContactID ;;
  }

  dimension: current_flag {
    type: string
    sql: ${TABLE}.CurrentFlag ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension_group: hire {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.HireDate ;;
  }

  dimension: login_id {
    type: string
    sql: ${TABLE}.LoginID ;;
  }

  dimension: manager_id {
    type: number
    sql: ${TABLE}.ManagerID ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.MaritalStatus ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: national_idnumber {
    type: string
    sql: ${TABLE}.NationalIDNumber ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: salaried_flag {
    type: string
    sql: ${TABLE}.SalariedFlag ;;
  }

  dimension: sick_leave_hours {
    type: number
    sql: ${TABLE}.SickLeaveHours ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: vacation_hours {
    type: number
    sql: ${TABLE}.VacationHours ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_id, employeeaddress.count]
  }
}
