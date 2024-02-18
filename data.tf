data "external" "token" { program = ["bash", "${path.module}/1password.sh"] }
