aws_region       = "us-east-1"
vpc_cidr         = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

instance_type    = "t3.micro"
key_name         = "my-key"

db_name          = "mydb"
db_username      = "admin"
db_password      = "ChangeMe123!"
