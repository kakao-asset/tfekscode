
# eks.private의 routetable에 default peering 정보 작성
resource "aws_route" "rt-eks1" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private1-out
  destination_cidr_block    = data.aws_vpc.vpc-default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.def-peer.id
}

resource "aws_route" "rt-eks2" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private2-out
  destination_cidr_block    = data.aws_vpc.vpc-default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.def-peer.id
}

resource "aws_route" "rt-eks3" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private3-out
  destination_cidr_block    = data.aws_vpc.vpc-default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.def-peer.id
}

resource "aws_route" "rt-eks4" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private4-out
  destination_cidr_block    = data.aws_vpc.vpc-default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.def-peer.id
}

# eks.private의 routetable에 cicd peering 정보 작성

resource "aws_route" "rt-eks5" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private1-out
  destination_cidr_block    = data.aws_vpc.vpc-cicd.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.cicd-peer.id
}

resource "aws_route" "rt-eks6" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private2-out
  destination_cidr_block    = data.aws_vpc.vpc-cicd.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.cicd-peer.id
}

resource "aws_route" "rt-eks7" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private3-out
  destination_cidr_block    = data.aws_vpc.vpc-cicd.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.cicd-peer.id
}

resource "aws_route" "rt-eks8" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-private4-out
  destination_cidr_block    = data.aws_vpc.vpc-cicd.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.cicd-peer.id
}


# eks.public의 routetable에 cicd peering 정보 작성

resource "aws_route" "rt-eks9" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-public1-out
  destination_cidr_block    = data.aws_vpc.vpc-cicd.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.cicd-peer.id
}

resource "aws_route" "rt-eks10" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-public2-out
  destination_cidr_block    = data.aws_vpc.vpc-cicd.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.cicd-peer.id
}


# eks.public의 routetable에 default peering 정보 작성

resource "aws_route" "rt-eks11" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-public1-out
  destination_cidr_block    = data.aws_vpc.vpc-default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.def-peer.id
}

resource "aws_route" "rt-eks12" {
  route_table_id            = data.terraform_remote_state.net.outputs.rtb-public2-out
  destination_cidr_block    = data.aws_vpc.vpc-default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.def-peer.id
}
