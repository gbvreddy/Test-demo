resource "aws_vpc" "my_vpc" {
  cidr_block = "10.172.0.0/16"
  

  tags = {
    Name = "dev"

  }
}

resource "aws_subnet" "my_vpc_subnet"{
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.172.1.0/24"
  map_public_ip_on_launch = true

  tags={
    Name = "dev_vpc_public"
  }
}