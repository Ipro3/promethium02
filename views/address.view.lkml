view: address {
  sql_table_name: adventureworks.address ;;
  drill_fields: [address_id]

  dimension: address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AddressID ;;
  }

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.AddressLine1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.AddressLine2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
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

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: state_province_id {
    type: number
    sql: ${TABLE}.StateProvinceID ;;
  }

  measure: count {
    type: count
    drill_fields: [address_id, employeeaddress.count]
  }
}
