view: productcategory {
  sql_table_name: adventureworks.productcategory ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.ProductCategoryID ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
