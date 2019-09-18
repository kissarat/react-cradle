resource "aws_route53_zone" "first" {
  name = var.hostname
  tags = {
    Comment = "terraform-first"
  }
}

resource "aws_route53_record" "first" {
  name = var.hostname
  type = "A"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = [aws_eip.first.public_ip]
}

resource "aws_route53_record" "jenkins" {
  name = "jenkins.${var.hostname}"
  type = "CNAME"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = [var.hostname]
}

resource "aws_route53_record" "local" {
  name = "local.${var.hostname}"
  type = "A"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = ["127.0.0.1"]
}

resource "aws_route53_record" "local_gateway" {
  name = "gateway.local.${var.hostname}"
  type = "A"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = ["192.168.0.1"]
}

resource "aws_route53_record" "local_second" {
  name = "second.local.${var.hostname}"
  type = "A"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = ["192.168.0.2"]
}

resource "aws_route53_record" "local_home" {
  name = "home.local.${var.hostname}"
  type = "A"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = ["192.168.1.1"]
}
