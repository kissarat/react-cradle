resource "aws_vpc" "default" {
  cidr_block = "${var.cidr_vpc}"
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-network"
  }
}