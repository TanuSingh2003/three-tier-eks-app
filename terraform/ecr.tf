resource "aws_ecr_repository" "flask_app" {
  name = "flask-todo-app"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Name = "flask-todo-app"
  }
}


