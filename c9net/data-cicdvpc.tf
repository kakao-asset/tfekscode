data "aws_vpc" "vpc-cicd" {
  default = false
  id      = data.terraform_remote_state.net.outputs.vpc-cicd-out
  #filter {
  #  name   = "tag:workshop"
  #  values = ["eks-cicd"]
  #}
}
