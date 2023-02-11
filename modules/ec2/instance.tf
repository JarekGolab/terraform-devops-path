resource "aws_instance" "ec2_instance" {
  ami           = var.image
  instance_type = var.instance_type
  key_name      = var.key_name



  tags = {
    "Name" = var.instance_name
  }

}

resource "aws_eip" "public-ip" {
  instance = aws_instance.ec2_instance.id
}

output "public-ip" {
  value = aws_eip.public-ip.public_ip
}
