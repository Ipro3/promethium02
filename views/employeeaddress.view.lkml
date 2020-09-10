view: employeeaddress {
  sql_table_name: adventureworks.employeeaddress ;;

  dimension: address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AddressID ;;
  }

  dimension: employee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EmployeeID ;;
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

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [employee.employee_id, address.address_id]
  }
}
