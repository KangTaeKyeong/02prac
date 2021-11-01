resource "aws_route_table" "sdkim_ngart_a" {
  vpc_id  =  aws_vpc.sdkim_vpc.id
 
  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.sdkim_nga_a.id
  }
  tags  = {
    Name  = "sdkim-nga-rta"
  }
}

resource "aws_route_table" "sdkim_ngart_c" {
  vpc_id  =  aws_vpc.sdkim_vpc.id
 
  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.sdkim_nga_c.id
  }
  tags  = {
    Name  = "sdkim-nga-rtc"
  }
}