# File generated by aws2tf see https://github.com/aws-samples/aws2tf
resource "aws_subnet" "subnet-eks-public1" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[0]
  cidr_block                      = "10.10.0.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                   = "eks-public1"
    "kakao"                  = "eks-public1"
    "kubernetes.io/role/elb" = "1"
  }
  vpc_id = aws_vpc.vpc-eks.id

  timeouts {}
}

output "sub-public1-out" {
  value = aws_subnet.subnet-eks-public1.id
}


# File generated by aws2tf see https://github.com/aws-samples/aws2tf
resource "aws_subnet" "subnet-eks-public2" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[2]
  cidr_block                      = "10.10.32.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                   = "eks-public2"
    "kakao"                  = "eks-public2"
    "kubernetes.io/role/elb" = "1"
  }
  vpc_id = aws_vpc.vpc-eks.id

  timeouts {}
}

output "sub-public2-out" {
  value = aws_subnet.subnet-eks-public2.id
}

####################################################################################################################################

# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-p1:
resource "aws_subnet" "subnet-eks-private1" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[0]
  cidr_block                      = "10.10.64.0/23"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                                                                      = "eks-private1"
    "kubernetes.io/cluster/${data.aws_ssm_parameter.tf-eks-cluster-name.value}" = "shared"
    "kubernetes.io/role/internal-elb"                                           = "1"
    "kakao"                                                                     = "eks-private1"
  }
  vpc_id = aws_vpc.vpc-eks.id

  timeouts {}
}


output "sub-private1-out" {
  value = aws_subnet.subnet-eks-private1.id
}


# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-p2:
resource "aws_subnet" "subnet-eks-private2" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[2]
  cidr_block                      = "10.10.96.0/23"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                                                                      = "eks-private2"
    "kubernetes.io/cluster/${data.aws_ssm_parameter.tf-eks-cluster-name.value}" = "shared"
    "kubernetes.io/role/internal-elb"                                           = "1"
    "kakao"                                                                     = "eks-private2"
  }
  vpc_id = aws_vpc.vpc-eks.id

  timeouts {}
}

output "sub-private2-out" {
  value = aws_subnet.subnet-eks-private2.id
}


# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-p2:
resource "aws_subnet" "subnet-eks-private3" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[0]
  cidr_block                      = "10.10.128.0/23"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                                                                      = "eks-private3"
    "kubernetes.io/cluster/${data.aws_ssm_parameter.tf-eks-cluster-name.value}" = "shared"
    "kubernetes.io/role/internal-elb"                                           = "1"
    "kakao"                                                                     = "eks-private3"
  }
  vpc_id = aws_vpc.vpc-eks.id

  timeouts {}
}

output "sub-private3-out" {
  value = aws_subnet.subnet-eks-private3.id
}


# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_subnet.subnet-p2:
resource "aws_subnet" "subnet-eks-private4" {
  assign_ipv6_address_on_creation = false
  availability_zone               = data.aws_availability_zones.az.names[2]
  cidr_block                      = "10.10.160.0/23"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                                                                      = "eks-private4"
    "kubernetes.io/cluster/${data.aws_ssm_parameter.tf-eks-cluster-name.value}" = "shared"
    "kubernetes.io/role/internal-elb"                                           = "1"
    "kakao"                                                                     = "eks-private4"
  }
  vpc_id = aws_vpc.vpc-eks.id

  timeouts {}
}

output "sub-private4-out" {
  value = aws_subnet.subnet-eks-private4.id
}