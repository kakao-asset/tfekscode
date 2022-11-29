resource "kubernetes_deployment" "kakaoasset-frontend-deploy" {

  metadata {
    name      = "kakaoasset-frontend-deploy"
    namespace = "kakaoasset"
  }

  spec {
    replicas = 4
    selector {
      match_labels = {
        "app" = "frontend"
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
        labels      = { "app" = "frontend" }
      }

      spec {

        restart_policy                   = "Always"
        share_process_namespace          = false
        termination_grace_period_seconds = 30

        container {
          image             = "ehdwn15100/frontend:1.0"
          #format("%s.dkr.ecr.%s.amazonaws.com/frontend:nolb", data.aws_caller_identity.current.account_id, data.aws_region.current.name)
          image_pull_policy = "Always"
          name              = "frontend"
          port {
            container_port = 3000
            protocol       = "TCP"
          }
          
          env_from {
            config_map_ref {
              name = "kakaoasset-frontend-cm"
            }
          }

          resources {
          }
        }
      }
    }
  }
}