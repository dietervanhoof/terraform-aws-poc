output "routing-tables" {
  value = {
    "terraform-private-routing-table" : aws_route_table.terraform-private-routing-table
    "terraform-public-routing-table" : aws_route_table.terraform-public-routing-table
  }
}