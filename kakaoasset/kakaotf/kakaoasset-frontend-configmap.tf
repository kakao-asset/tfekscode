resource "kubernetes_config_map" "kakaoasset-frontend-cm" {
  metadata {
    name      = "kakaoasset-frontend-cm"
    namespace = "kakaoasset"
  }

  data = {
    REACT_APP_BACKEND_URI        = "http://kakaoasset-backend-svc:8080/"
    REACT_APP_KAKAO_CLIENT_ID    = "12826fef7f7511bec960427871f356f1"
    REACT_APP_KAKAO_REDIRECT_URI = "http://kakaoasset-frontend-svc/oauth/kakao"
  }

}