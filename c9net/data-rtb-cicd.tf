data "aws_route_table" "rtb-cicd-private1" {
  vpc_id = data.aws_vpc.vpc-cicd.id
  filter {
    name   = "tag:Name"
    values = ["rtb-eks-cicd-private1"]
  }
}







