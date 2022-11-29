data "aws_subnet" "cicd" {

  filter {
    name   = "tag:kakao"
    values = ["cicd-private1"]
  }
}