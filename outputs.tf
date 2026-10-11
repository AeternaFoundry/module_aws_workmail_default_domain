output "workmail_default_domains_domain_name" {
  description = "Map of domain_name values across all workmail_default_domains, keyed the same as var.workmail_default_domains"
  value       = { for k, v in aws_workmail_default_domain.workmail_default_domains : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "workmail_default_domains_organization_id" {
  description = "Map of organization_id values across all workmail_default_domains, keyed the same as var.workmail_default_domains"
  value       = { for k, v in aws_workmail_default_domain.workmail_default_domains : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "workmail_default_domains_region" {
  description = "Map of region values across all workmail_default_domains, keyed the same as var.workmail_default_domains"
  value       = { for k, v in aws_workmail_default_domain.workmail_default_domains : k => v.region if v.region != null && length(v.region) > 0 }
}

