/*
output "vpc_output" {
  value = {
    vpc_id                               = aws_vpc.stage-vpc.id
    name                                 = aws_vpc.stage-vpc.tags.Name
    arn                                  = aws_vpc.stage-vpc.arn
    cidr_block                           = aws_vpc.stage-vpc.cidr_block
    default_network_acl_id               = aws_vpc.stage-vpc.default_network_acl_id
    default_route_table_id               = aws_vpc.stage-vpc.default_route_table_id
    default_security_group_id            = aws_vpc.stage-vpc.default_security_group_id
    dhcp_options_id                      = aws_vpc.stage-vpc.dhcp_options_id
    enable_classiclink                   = aws_vpc.stage-vpc.enable_classiclink
    enable_classiclink_dns_support       = aws_vpc.stage-vpc.enable_classiclink_dns_support
    enable_dns_hostnames                 = aws_vpc.stage-vpc.enable_dns_hostnames
    enable_dns_support                   = aws_vpc.stage-vpc.enable_dns_support
    enable_network_address_usage_metrics = aws_vpc.stage-vpc.enable_network_address_usage_metrics
    instance_tenancy                     = aws_vpc.stage-vpc.instance_tenancy
    ipv6_association_id                  = aws_vpc.stage-vpc.ipv6_association_id
    ipv6_cidr_block                      = aws_vpc.stage-vpc.ipv6_cidr_block
    ipv6_cidr_block_network_border_group = aws_vpc.stage-vpc.ipv6_cidr_block_network_border_group
    main_route_table_id                  = aws_vpc.stage-vpc.main_route_table_id
    owner_id                             = aws_vpc.stage-vpc.owner_id
  }
}

output "user_names" {
  value = [for name in var.user_names : name]
}
*/