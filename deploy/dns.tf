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
  type = "A"
  zone_id = aws_route53_zone.first.id
  ttl = 100
  records = [aws_eip.first.public_ip]
}
