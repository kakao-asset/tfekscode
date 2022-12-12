resource "kubernetes_config_map" "kakaoasset-backend-cm" {
  metadata {
    name      = "kakaoasset-backend-cm"
    namespace = "kakaoasset"
  }

  data = {
    KAKAO-OAUTH_REDIRECT-URI = "http://kakaoasset-frontend-svc:30001/oauth/kakao"
    SPRING_DATASOURCE_URL    = "jdbc:mariadb://kakaoasset-rdb-svc:3306/kakaoasset?serverTimezone=Asia/Seoul"
    SPRING_REDIS             = "kakaoasset-redis-svc"
    ELASTICSEARCH_HOST       = "43.201.38.110"
  }

}