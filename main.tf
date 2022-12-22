locals {
  Name = "${var.client}-${var.project}"
}

resource "aws_route_table" "route_table" {
    vpc_id = var.vpc_id
    tags = {
    Name = local.Name
    client = var.client
    project = var.project
  } 
}