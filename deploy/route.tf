resource "aws_route_table" "public" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "terraform-public"
  }
}

resource "aws_route_table_association" "default" {
  route_table_id = aws_route_table.public.id
  subnet_id = aws_subnet.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "terraform-private"
  }
}
