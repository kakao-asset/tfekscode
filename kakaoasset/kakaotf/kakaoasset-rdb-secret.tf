resource "kubernetes_secret" "kakaoasset-rdb-sec" {
  metadata {
    name      = "kakaoasset-rdb-sec"
    namespace = "kakaoasset"
  }

  data = {
    MARIADB_ROOT_PASSWORD = "kakaoasset123#"
    MARIADB_DATABASE      = "kakaoasset"
    MARIADB_USER          = "root"
    MARIADB_IP            = "mariadb"
  }

}