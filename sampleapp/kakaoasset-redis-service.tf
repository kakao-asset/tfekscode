resource "kubernetes_service" "kakaoasset-redis-svc" {

  metadata {
    name      = "kakaoasset-redis-svc"
    namespace = "kakaoasset"
  }

  spec {
    selector = {
      "app" = "redis"
    }

    type = "ClusterIP"
    port {
      port        = 6379
      protocol    = "TCP"
      target_port = 6379
    }
  }

}