resource "aws_lb_target_group_attachment" "sdkim_lbtg_att" {
  target_group_arn      = aws_lb_target_group.sdkim_lbtg.arn
  target_id             = aws_instance.sdkim_weba.id
  port                  = 80 
}