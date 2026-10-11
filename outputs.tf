output "ec2_local_gateway_lookup_id" {
  description = "Map of id values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_local_gateway_lookup_filter" {
  description = "Map of filter values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_local_gateway_lookup_outpost_arn" {
  description = "Map of outpost_arn values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.outpost_arn if v.outpost_arn != null && length(v.outpost_arn) > 0 }
}
output "ec2_local_gateway_lookup_owner_id" {
  description = "Map of owner_id values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "ec2_local_gateway_lookup_region" {
  description = "Map of region values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_local_gateway_lookup_state" {
  description = "Map of state values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ec2_local_gateway_lookup_tags" {
  description = "Map of tags values across all ec2_local_gateway_lookup, keyed the same as var.ec2_local_gateway_lookup"
  value       = { for k, v in data.aws_ec2_local_gateway.ec2_local_gateway_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

