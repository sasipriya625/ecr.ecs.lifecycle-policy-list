resource "aws_ecs_cluster" "finops-cluster" {
  name = var.finops-cluster
  setting {
    name  = "containerInsights"
    value = "enabled"
   }
}