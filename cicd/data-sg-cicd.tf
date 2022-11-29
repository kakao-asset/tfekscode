data "aws_security_group" "cicd" {
  vpc_id = data.aws_vpc.vpc-cicd.id
  filter {
    name   = "tag:kakao"
    values = ["eks-cicd"]
  }
}







