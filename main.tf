data "aws_ec2_local_gateway" "ec2_local_gateway_lookup" {
  for_each = var.ec2_local_gateway_lookup

  region = each.value.region
  state  = each.value.state
  tags   = each.value.tags

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

