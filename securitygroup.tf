resource "aws_security_group" "ec2_sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc_demo.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = var.sg_cidr
  from_port         = var.sshPort
  ip_protocol       = "tcp"
  to_port           = var.sshPort
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = var.sg_cidr
  from_port         = var.httpPort
  ip_protocol       = "tcp"
  to_port           = var.httpPort
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = var.sg_cidr
  ip_protocol       = "-1" # semantically equivalent to all ports
}
