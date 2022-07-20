resource "aws_alb" "LB" {
    name = "LB"
    subnets = [aws_subnet.Public-Subnet1.id,aws_subnet.Public-Subnet2.id]
    security_groups = [aws_security_group.SG-ALB.id]
}


resource "aw_alb_target_group" "ALB-TG" {
    name = "ALB-TG"
    port = 80
    protocol = "HTTP"
    target_group_type = "application"
    vpc_id = aws_vpc.vpc.id

    health_check {
        healthy_threshold = 2
        unhealthy_threshold = 2
        protocol = "HTTP"
        matcher = 200
        path = "/"
        interval = 30
    }
}