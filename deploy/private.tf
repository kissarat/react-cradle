resource "aws_subnet" "private" {
  vpc_id = aws_vpc.default.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.zone
  tags = {
    Name = "terraform-subnet-private"
  }
}
