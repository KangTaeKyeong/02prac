# 가용영역 a의 Public Subnet
resource "aws_subnet" "sdkim_puba" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone =   "ap-northeast-2a"

  tags = {
    Name = "sdkim-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "sdkim_pria" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone =   "ap-northeast-2a"
  tags = {
    Name = "sdkim-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "sdkim_pubc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone =  "ap-northeast-2c"
  tags = {
    Name = "sdkim-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "sdkim_pric" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-pric"
  }
}
  resource "aws_subnet" "sdkim_pridba" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "sdkim-pridba"
  }
}
resource "aws_subnet" "sdkim_pridbc" {
  vpc_id            = aws_vpc.sdkim_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sdkim-pridbc"
  }
}