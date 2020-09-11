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
