resource "aws_instance" "practice-3" {
  ami = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  user_data     =  "${file("scripts/installation-docker.sh")}"
  key_name = "practice"
}