resource "kubernetes_deployment" "kakaoasset-redis-deploy" {

  metadata {
    name      = "kakaoasset-redis-deploy"
    namespace = "kakaoasset"
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        "app" = "redis"
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
        labels      = { "app" = "redis" }
      }

      spec {

        restart_policy                   = "Always"
        share_process_namespace          = false
        termination_grace_period_seconds = 30

        container {
          image = "redis"
          #format("%s.dkr.ecr.%s.amazonaws.com/redis:nolb", data.aws_caller_identity.current.account_id, data.aws_region.current.name)
          image_pull_policy = "Always"
          name              = "redis"
          port {
            container_port = 6379
            protocol       = "TCP"
          }

          resources {
          }
        }
      }
    }
  }
}