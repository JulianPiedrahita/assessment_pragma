resource "aws_instance" "web_server" {
  ami                        = "ami-4567890"
  instance_type              = "t3.nano"
  subnet_id                  = aws_subnet.web_sub_1.id
  vpc_security_group_ids     = [aws_security_group.server.id]
  associate_public_ip_adress = var.include_ipv4
  tags = {
    Name = "Hola mundo"
  }
}

