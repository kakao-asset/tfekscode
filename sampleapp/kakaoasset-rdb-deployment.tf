resource "kubernetes_deployment" "kakaoasset-rdb-deploy" {

  metadata {
    name      = "kakaoasset-rdb-deploy"
    namespace = "kakaoasset"
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        "app" = "rdb"
      }
    }
    strategy {
      type = "RollingUpdate"

      rolling_update {
        max_surge       = "25%"
        max_unavailable = "25%"
      }
    }

    template {
      metadata {
        annotations = {}
        labels      = { "app" = "rdb" }
      }

      spec {

        restart_policy                   = "Always"
        share_process_namespace          = false
        termination_grace_period_seconds = 30

        container {
          image             = "mariadb"
          #format("%s.dkr.ecr.%s.amazonaws.com/rdb:nolb", data.aws_caller_identity.current.account_id, data.aws_region.current.name)
          image_pull_policy = "Always"
          name              = "rdb"
          port {
            container_port = 3306
            protocol       = "TCP"
          }
          
          resources {
          }
        }
      }
    }
  }
}