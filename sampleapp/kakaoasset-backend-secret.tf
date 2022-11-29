resource "kubernetes_secret" "kakaoasset-backend-sec" {
  metadata {
    name = "kakaoasset-backend-sec"
    namespace = "kakaoasset"
  }

  data = {
    SPRING_DATASOURCE_USERNAME = "root"
    SPRING_DATASOURCE_PASSWORD = "kakaoasset123#"
  }

}