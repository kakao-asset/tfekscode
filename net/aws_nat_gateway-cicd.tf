# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_nat_gateway.nat-07b271e3a84d0d94a:
resource "aws_nat_gateway" "nat-cicd" {
  allocation_id = aws_eip.eip-nat-cicd.id
  subnet_id     = aws_subnet.subnet-cicd-public1.id
  tags = {
    "Name" = "ngw-eks-cicd"
  }
}
