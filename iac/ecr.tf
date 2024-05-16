resource "aws_ecr_repository" "awscd" {
  name                 = "demo-awscd-2024"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}