resource "kubernetes_namespace" "kakaoasset" {
  metadata {
    name = "kakaoasset"
  }

  timeouts {
    delete = "20m"
  }
}

