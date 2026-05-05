resource "aws_security_group" "main" {
  name        = var.securitygroup_name
  description = var.securitygroup_desc
  vpc_id      = var.vpc_id

 #Allows to connect to internet,outbound traffic from SG
  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
 }
  tags = merge(
    local.common_tags,
   {
    Name = "${var.project}-${var.environment}-${var.securitygroup_name}"
   }
 )
}