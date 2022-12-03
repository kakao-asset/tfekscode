resource "kubernetes_service" "kakaoasset-frontend-svc" {

  metadata {
    name      = "kakaoasset-frontend-svc"
    namespace = "kakaoasset"
  }

  spec {
    selector = {
      "app" = "frontend"
    }

    type = "NodePort"
    port {
      port        = 80
      protocol    = "TCP"
      target_port = 3000
    }
  }

}