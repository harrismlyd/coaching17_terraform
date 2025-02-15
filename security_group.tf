resource "aws_security_group" "ecs" {
  name        = "ecs_security_group"
  description = "Allow traffic to ECS containers"
  vpc_id      = local.vpc_id # Replace with your VPC ID

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}