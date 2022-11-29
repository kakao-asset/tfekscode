resource "kubernetes_service" "kakaoasset-rdb-svc" {

  metadata {
    name      = "kakaoasset-rdb-svc"
    namespace = "kakaoasset"
  }

  spec {
    selector = {
      "app" = "rdb"
    }

    type = "ClusterIP"
    port {
      port        = 3306
      protocol    = "TCP"
      target_port = 3306
    }
  }

}