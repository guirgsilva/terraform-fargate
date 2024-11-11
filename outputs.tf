output "alb_hostname" {
  // The value of the output is the DNS name of the ALB followed by port 3000
  value = "${aws_alb.main.dns_name}:3000"
}