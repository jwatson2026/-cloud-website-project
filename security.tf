resource "aws_security_group" "website" {
  name_prefix = "cloud-website-"
  description = "Allow HTTP access to the project website"
  vpc_id      = data.aws_vpc.existing.id

  ingress {
    description = "Allow website visitors"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "cloud-website-security-group"
    Project = "cloud-website-project"
  }
}
