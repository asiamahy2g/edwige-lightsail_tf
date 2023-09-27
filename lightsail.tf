resource "aws_lightsail_instance" "light_sail_1" {
  name              = "Edwige"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && sudo echo '<h1>Edwige created this server using Terraform</h1>' | sudo tee /var/www/html/index.html"
}

