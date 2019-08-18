resource "aws_subnet" "public" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidr}"
  availability_zone = "${var.zone}"
  tags = {
    Name = "terraform-subnet-public"
  }
}
