resource "kubernetes_ingress_v1" "kakaoasset-ingress" {
  metadata {
    annotations = { "kubernetes.io/ingress.class" = "alb", "alb.ingress.kubernetes.io/scheme" = "internet-facing", "alb.ingress.kubernetes.io/target-type" = "instance", "alb.ingress.kubernetes.io/listen-ports" = "[{\"HTTP\": 80}]" }
    name        = "kakaoasset-ingress"
    #namespace   = "kakaoasset"
  }

  spec {

    rule {
      http {
        path {
          path = "/*"
          backend {
            service {
              #name = "kakaoasset-frontend-svc"
              name = "front-svc"
              port {
                number = 3000
              }
            }
          }
        }
      }
    }
  }
}
