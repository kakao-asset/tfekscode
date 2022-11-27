# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.rtbassoc-029eb518ff8c1739a:
resource "aws_route_table_association" "rtbassoc-eks-public2" {
  route_table_id = aws_route_table.rtb-eks-public2.id
  subnet_id      = aws_subnet.subnet-eks-public2.id
}

output "rtb-public2-out" {
  value = aws_route_table.rtb-eks-public2.id
}