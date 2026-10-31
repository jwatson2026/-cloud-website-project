data "aws_vpc" "existing" {
  id = "vpc-0dfc652b127150c53"
}

data "aws_subnet" "public" {
  id = "subnet-0f5966f6a911f35f0"
}
