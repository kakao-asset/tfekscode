data "aws_vpc" "cicd" {
  default = false
  filter {
    name   = "tag:kakao"
    values = ["vpc-cicd"]
  }
}
