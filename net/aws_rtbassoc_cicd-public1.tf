# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_route_table_association.rtbassoc-024cb38ce64e85194:
resource "aws_route_table_association" "rtbassoc-cicd-public1" {
  route_table_id = aws_route_table.rtb-cicd-public1.id
  subnet_id      = aws_subnet.subnet-cicd-public1.id
}
