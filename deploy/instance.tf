provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

resource "aws_instance" "first" {
  ami = "${var.ami}"
  availability_zone = "${var.zone}"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  subnet_id = "${aws_subnet.public.id}"
  associate_public_ip_address = true
  source_dest_check = false
  tags = {
    "Name" = "terraform-first"
  }
}

resource "aws_eip" "first" {
  instance = "${aws_instance.first.id}"
  vpc = true
  tags = {
    Name = "terraform-first"
  }
}

resource "aws_ebs_volume" "first" {
  availability_zone = "${var.zone}"
  size = 15
  tags = {
    Name = "terraform-first"
  }
}

resource "aws_volume_attachment" "first" {
  device_name = "/dev/sdh"
  instance_id = "${aws_instance.first.id}"
  volume_id = "${aws_ebs_volume.first.id}"
}
