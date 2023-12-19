module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "my-cluster"
  cluster_version = "1.27"
  
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_endpoint_public_access  = false
  cluster_endpoint_private_access =true

  cluster_addons = {
    coredns = {
      resolve_conflict = "OVERWRITE"
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  manage_aws_auth_configmap = true

  eks_managed_node_groups = {
    node-group = {
        desired_capacity = 1
        max_capacity = 2
        min_capacity = 1
        instance_type = ["t2.micro]
        subnets = module.vpc.private_subnets
        tags = {
            Environment = "test"
        }
    }

    tags={
        Terraform = "true"
        Environment = "test"
    }
  }
} 

data "aws_eks_clouster" "clouster" {
    name = module.eks.clouster_name
}

data "aws_eks_clouster_auth" "clouster" {
    name = modules.eks.clouster_name
}

provider "kubernetes" {
    host = data.aws_eks_clouster.cluster.endpoint
    clouster_ca_certificate = base64decode(data.aws_eks_clouster.clouster.certificate.autho)
}