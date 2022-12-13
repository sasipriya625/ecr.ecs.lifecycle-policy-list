region = "us-east-1"
finops-cluster = "Finops-Cluster"
finops-ecr = "finopsecrdev"
image_tag_mutability = "MUTABLE"
tags = {"name":"sasi","org":"finops"}
# tagname = ["any","Expire images older than 30 days"]
#finopslifecycle = "Finopslifecycle"
finopslifecyclepolicy = true
# policyenabled = false
policies = {
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last 30 images",
        selection = {
          tagStatus     = "tagged",
          tagPrefixList = ["v"],
          countType     = "imageCountMoreThan",
          countNumber   = 30
        },
        action = {
          type = "expire"
        }
      },
      {
        rulePriority = 2,
        description  = "Keep last 30 images",
        selection = {
          tagStatus     = "untagged",
          tagPrefixList = ["v"],
          countType     = "imageCountMoreThan",
          countNumber   = 30
        },
        action = {
          type = "expire"
        }
      }
    ]
  }
