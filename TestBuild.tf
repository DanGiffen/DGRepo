provider "aws" {
  access_key = "AKIAJQG5MIHOI5PITOAA"
  secret_key = "gf6Q2sBKrwJZyOnI4KeugfQSq/Q0TGK8DPLgIpFr"
  region     = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-c12dcda6"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
