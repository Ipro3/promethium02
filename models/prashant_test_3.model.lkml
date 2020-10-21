connection: "mysql-qa"

# include all the views
include: "/views/**/*.view"

datagroup: prashant_test_3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: prashant_test_3_default_datagroup

explore: employee {
#   join: contact {
#     type: left_outer
#     sql_on: ${employee.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: address {}

# explore: addresstype {}

# explore: awbuildversion {}

# explore: billofmaterials {}

# explore: contact {}

# explore: contactcreditcard {
#   join: contact {
#     type: left_outer
#     sql_on: ${contactcreditcard.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: contacttype {}

# explore: countryregion {}

# explore: countryregioncurrency {}

# explore: creditcard {}

# explore: culture {}

# explore: currency {}

# explore: currencyrate {}

# explore: customer {}

# explore: customeraddress {
#   join: customer {
#     type: left_outer
#     sql_on: ${customeraddress.customer_id} = ${customer.customer_id} ;;
#     relationship: many_to_one
#   }

#   join: address {
#     type: left_outer
#     sql_on: ${customeraddress.address_id} = ${address.address_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: databaselog {}

# explore: department {}

# explore: document {}

# explore: employeeaddress {
#   join: employee {
#     type: left_outer
#     sql_on: ${employeeaddress.employee_id} = ${employee.employee_id} ;;
#     relationship: many_to_one
#   }

#   join: address {
#     type: left_outer
#     sql_on: ${employeeaddress.address_id} = ${address.address_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${employee.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: employeedepartmenthistory {
#   join: employee {
#     type: left_outer
#     sql_on: ${employeedepartmenthistory.employee_id} = ${employee.employee_id} ;;
#     relationship: many_to_one
#   }

#   join: department {
#     type: left_outer
#     sql_on: ${employeedepartmenthistory.department_id} = ${department.department_id} ;;
#     relationship: many_to_one
#   }

#   join: shift {
#     type: left_outer
#     sql_on: ${employeedepartmenthistory.shift_id} = ${shift.shift_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${employee.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: employeepayhistory {
#   join: employee {
#     type: left_outer
#     sql_on: ${employeepayhistory.employee_id} = ${employee.employee_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${employee.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: errorlog {}

# explore: illustration {}

# explore: individual {
#   join: customer {
#     type: left_outer
#     sql_on: ${individual.customer_id} = ${customer.customer_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${individual.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: jobcandidate {
#   join: employee {
#     type: left_outer
#     sql_on: ${jobcandidate.employee_id} = ${employee.employee_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${employee.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: location {}

# explore: product {}

# explore: productcategory {}

# explore: productcosthistory {
#   join: product {
#     type: left_outer
#     sql_on: ${productcosthistory.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productdescription {}

# explore: productdocument {
#   join: product {
#     type: left_outer
#     sql_on: ${productdocument.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }

#   join: document {
#     type: left_outer
#     sql_on: ${productdocument.document_id} = ${document.document_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productinventory {
#   join: product {
#     type: left_outer
#     sql_on: ${productinventory.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }

#   join: location {
#     type: left_outer
#     sql_on: ${productinventory.location_id} = ${location.location_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productlistpricehistory {
#   join: product {
#     type: left_outer
#     sql_on: ${productlistpricehistory.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productmodel {}

# explore: productmodelillustration {
#   join: illustration {
#     type: left_outer
#     sql_on: ${productmodelillustration.illustration_id} = ${illustration.illustration_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productmodelproductdescriptionculture {
#   join: culture {
#     type: left_outer
#     sql_on: ${productmodelproductdescriptionculture.culture_id} = ${culture.culture_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productphoto {}

# explore: productproductphoto {
#   join: product {
#     type: left_outer
#     sql_on: ${productproductphoto.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productreview {
#   join: product {
#     type: left_outer
#     sql_on: ${productreview.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: productsubcategory {}

# explore: productvendor {
#   join: product {
#     type: left_outer
#     sql_on: ${productvendor.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }

#   join: vendor {
#     type: left_outer
#     sql_on: ${productvendor.vendor_id} = ${vendor.vendor_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: purchaseorderdetail {
#   join: product {
#     type: left_outer
#     sql_on: ${purchaseorderdetail.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: purchaseorderheader {
#   join: employee {
#     type: left_outer
#     sql_on: ${purchaseorderheader.employee_id} = ${employee.employee_id} ;;
#     relationship: many_to_one
#   }

#   join: vendor {
#     type: left_outer
#     sql_on: ${purchaseorderheader.vendor_id} = ${vendor.vendor_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${employee.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: salesorderdetail {
#   join: product {
#     type: left_outer
#     sql_on: ${salesorderdetail.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: salesorderheader {
#   join: customer {
#     type: left_outer
#     sql_on: ${salesorderheader.customer_id} = ${customer.customer_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${salesorderheader.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: salesorderheadersalesreason {}

# explore: salesperson {}

# explore: salespersonquotahistory {}

# explore: salesreason {}

# explore: salestaxrate {}

# explore: salesterritory {}

# explore: salesterritoryhistory {}

# explore: scrapreason {}

# explore: shift {}

# explore: shipmethod {}

# explore: shoppingcartitem {
#   join: product {
#     type: left_outer
#     sql_on: ${shoppingcartitem.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: specialoffer {}

# explore: specialofferproduct {
#   join: product {
#     type: left_outer
#     sql_on: ${specialofferproduct.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: stateprovince {}

# explore: store {
#   join: customer {
#     type: left_outer
#     sql_on: ${store.customer_id} = ${customer.customer_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: storecontact {
#   join: customer {
#     type: left_outer
#     sql_on: ${storecontact.customer_id} = ${customer.customer_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${storecontact.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: transactionhistory {
#   join: product {
#     type: left_outer
#     sql_on: ${transactionhistory.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: transactionhistoryarchive {
#   join: product {
#     type: left_outer
#     sql_on: ${transactionhistoryarchive.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: unitmeasure {}

# explore: vendor {}

# explore: vendoraddress {
#   join: vendor {
#     type: left_outer
#     sql_on: ${vendoraddress.vendor_id} = ${vendor.vendor_id} ;;
#     relationship: many_to_one
#   }

#   join: address {
#     type: left_outer
#     sql_on: ${vendoraddress.address_id} = ${address.address_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: vendorcontact {
#   join: vendor {
#     type: left_outer
#     sql_on: ${vendorcontact.vendor_id} = ${vendor.vendor_id} ;;
#     relationship: many_to_one
#   }

#   join: contact {
#     type: left_outer
#     sql_on: ${vendorcontact.contact_id} = ${contact.contact_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: workorder {
#   join: product {
#     type: left_outer
#     sql_on: ${workorder.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: workorderrouting {
#   join: product {
#     type: left_outer
#     sql_on: ${workorderrouting.product_id} = ${product.product_id} ;;
#     relationship: many_to_one
#   }

#   join: location {
#     type: left_outer
#     sql_on: ${workorderrouting.location_id} = ${location.location_id} ;;
#     relationship: many_to_one
#   }
 }
