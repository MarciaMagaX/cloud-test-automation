provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_vm" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = var.key_name
  user_data     = file("scripts/startup.sh")

  tags = {
    Name = "Cypress-Test-VM"
  }
}

output "instance_ip" {
  value = aws_instance.test_vm.public_ip
}
