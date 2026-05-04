resource "aws_security_group" "main" {
  name        = var.securitygroup_name
  description = var.securitygroup_desc
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
   {
    Name = "${var.project}-${var.environment}-${var.securitygroup_name}"
   }
 )
}