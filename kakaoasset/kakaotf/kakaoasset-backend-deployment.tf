resource "kubernetes_deployment" "kakaoasset-backend-deploy" {

  metadata {
    name      = "kakaoasset-backend-deploy"
    namespace = "kakaoasset"
  }

  spec {
    replicas = 4
    selector {
      match_labels = {
        "app" = "backend"
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
        labels      = { "app" = "backend" }
      }

      spec {

        restart_policy                   = "Always"
        share_process_namespace          = false
        termination_grace_period_seconds = 30

        container {
          image = "ehdwn15100/backend:2.0"
          #format("%s.dkr.ecr.%s.amazonaws.com/backend:nolb", data.aws_caller_identity.current.account_id, data.aws_region.current.name)
          image_pull_policy = "Always"
          name              = "backend"
          port {
            container_port = 8080
            protocol       = "TCP"
          }

          env_from {
            config_map_ref {
              name = "kakaoasset-backend-cm"
            }

            secret_ref {
              name = "kakaoasset-backend-sec"
            }
          }

          resources {
          }
        }
      }
    }
  }
}