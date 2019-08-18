output "ip" {
  value = "${aws_eip.first.public_ip}"
}

output "name_servers" {
  value = "${aws_route53_zone.first.name_servers}"
}
