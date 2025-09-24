resource "aws_instance" "app" {
  count         = length(var.public_subnet_ids)
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_ids[count.index]
  key_name      = var.key_name

  tags = { Name = "AppServer-${count.index}" }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

output "instance_ids" {
  value = aws_instance.app[*].id
}
