resource "kubernetes_service" "kakaoasset-backend-svc" {

  metadata {
    name      = "kakaoasset-backend-svc"
    namespace = "kakaoasset"
  }

  spec {
    selector = {
      "app" = "backend"
    }

    type = "ClusterIP"
    port {
      port        = 8080
      protocol    = "TCP"
      target_port = 8080
    }
  }

}