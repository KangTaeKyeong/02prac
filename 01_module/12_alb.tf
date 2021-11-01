# Application LoadBalancer Deploy
resource "aws_lb" "sdkim_lb" {
  name                   = "sdkim-alb"
  internal               = false
  load_balancer_type     = "application"
  security_groups        =  [aws_security_group.sdkim_websg.id]
  subnets                =  [aws_subnet.sdkim_puba.id,aws_subnet.sdkim_pubc.id]
  
  tags = {
    Name  = "sdkim-alb"
  }
}