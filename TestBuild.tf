provider "aws" {
  access_key = "
  region     = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-c12dcda6"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
