# Name of the sg should be given as ... sg name = Projectname-environmentname-sgname(for which resource you are creating this sg )
# for ex: expense-dev-mysql
resource "aws_security_group" "main" {
  name        = local.sg_final_name #expense-dev-mysql
  description = var.sg_description
  vpc_id      = var.vpc_id # we will get this from parameter store
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # all protocals
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
       Name = local.sg_final_name
    }
  )

}