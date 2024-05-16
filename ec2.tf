resource "aws_instance" "demo_ec2" {
  ami = var.ec2_ami
  subnet_id = aws_subnet.public_subnet.id
  instance_type = var.instance_type

  security_groups = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "demoEC2"
  }
}