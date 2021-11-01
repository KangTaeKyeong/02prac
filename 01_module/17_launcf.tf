resource "aws_launch_configuration" "sdkim_lacf" {
  name                 = "sdkim-web"
  image_id             = aws_ami_from_instance.sdkim_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.sdkim_websg.id]
  key_name             = "sdkim-key"
  user_data            =<<-EOF
                        #!/bin/bash
                        systemctl start httpd
                        systemctl enable httpd
                        EOF
  lifecycle {
    create_before_destroy  = true
  }
}