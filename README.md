# GCPterraform-
The Source Group
Postgres SQL code added

_sql_database.postgresql_db: Refreshing state... [id=projects/gifted-pillar-354815/instances/mydbpostgrespwd-db1/databases/tfdb]
google_sql_user.postgresql_user: Refreshing state... [id=dbadmin//mydbpostgrespwd-db1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the        
following symbols:
  - destroy

Terraform will perform the following actions:

  # google_sql_database.postgresql_db will be destroyed
  - resource "google_sql_database" "postgresql_db" {
      - charset   = "UTF8" -> null
      - collation = "en_US.UTF8" -> null
      - id        = "projects/gifted-pillar-354815/instances/mydbpostgrespwd-db1/databases/tfdb" -> null
      - instance  = "mydbpostgrespwd-db1" -> null
      - name      = "tfdb" -> null
      - project   = "gifted-pillar-354815" -> null
      - self_link = "https://sqladmin.googleapis.com/sql/v1beta4/projects/gifted-pillar-354815/instances/mydbpostgrespwd-db1/databases/tfdb" -> null
    }

  # google_sql_database_instance.postgresql will be destroyed
  - resource "google_sql_database_instance" "postgresql" {
      - connection_name               = "gifted-pillar-354815:us-east4:mydbpostgrespwd-db1" -> null
      - database_version              = "POSTGRES_12" -> null
      - deletion_protection           = true -> null
      - first_ip_address              = "34.86.138.59" -> null
      - id                            = "mydbpostgrespwd-db1" -> null
      - ip_address                    = [
          - {
              - ip_address     = "34.86.138.59"
              - time_to_retire = ""
              - type           = "PRIMARY"
            },
          - {
              - ip_address     = "35.245.203.98"
              - time_to_retire = ""
              - type           = "OUTGOING"
            },
        ] -> null
      - name                          = "mydbpostgrespwd-db1" -> null
      - project                       = "gifted-pillar-354815" -> null
      - public_ip_address             = "34.86.138.59" -> null
      - region                        = "us-east4" -> null
      - self_link                     = "https://sqladmin.googleapis.com/sql/v1beta4/projects/gifted-pillar-354815/instances/mydbpostgrespwd-db1" -> null
      - server_ca_cert                = [
          - {
              - cert             = <<-EOT
                    -----BEGIN CERTIFICATE-----
                    MIIDfzCCAmegAwIBAgIBADANBgkqhkiG9w0BAQsFADB3MS0wKwYDVQQuEyQyN2Qw
                    YzkxYi1jNmMzLTQzZmUtOWFiZi02NWU0MTVkNDIyZGMxIzAhBgNVBAMTGkdvb2ds
                    ZSBDbG91ZCBTUUwgU2VydmVyIENBMRQwEgYDVQQKEwtHb29nbGUsIEluYzELMAkG
                    A1UEBhMCVVMwHhcNMjIwNzE0MTcyODQwWhcNMzIwNzExMTcyOTQwWjB3MS0wKwYD
                    VQQuEyQyN2QwYzkxYi1jNmMzLTQzZmUtOWFiZi02NWU0MTVkNDIyZGMxIzAhBgNV
                    BAMTGkdvb2dsZSBDbG91ZCBTUUwgU2VydmVyIENBMRQwEgYDVQQKEwtHb29nbGUs
                    IEluYzELMAkGA1UEBhMCVVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
                    AQDB/qClblT/QD+VRpOrphJE9jB1Xes4WuVqwPutg1J6z+N8/hExlxz3KFu+/ck7
                    N960zSHeLsx/zdkbIagO5rO2Y4JgKCH5XuFxlAdU8TrYRM4ud5Mys1kPYQkgZJXd
                    giv4/NGwd8+26y+uv2yvXqevEPnnpQkF2X4brtP+u5bBfz1x76/En2eLhDdJVOj3
                    OHoPfUmYoj8VG/hFA3wZFKRn4ERRgN8s5foqe+uF3/8q5c80hCSl4SgI3si4WjUl
                    TyseH5Eq90oYE8ZYH0kK5CZbcb2iuaG0ANf9fNt0PM/Qbkc74ywl320euzZKVypb
                    WjWS13ZNs7aVe6KZvNfL8AKRAgMBAAGjFjAUMBIGA1UdEwEB/wQIMAYBAf8CAQAw
                    DQYJKoZIhvcNAQELBQADggEBAGCwIK/uMcyk32ehOViu2md1knk/5un4vImMFcjZ
                    FUKpvJjac49xyjqyG6jR1tD9IRZtGWTXcYJC6yZ03jE79vyPWz+BUz03NEBadV+Z
                    34fS4dnjSWk1KRXvOaFQgwe+D74+hByxO3ttH2R5p6qZ+nOaTo8Ls3aGfeoACC+g
                    NbMd1mnyP5e3CD1nB65jPD6tNJMqCloVfb8E36Nr/asMyLKThK+HVMiSB/M+GqJh
                    voYHc+5dtf0ZFoiNDmhx2hY3C01+y1pResoVe9plU05CN13lkbCstGPQPbmFsgQo
                    mbSVsikNLhw2sX1WhkGsosYPbbE2cCosvdkAdi5uQMNFyeU=
                    -----END CERTIFICATE-----
                EOT
              - common_name      = "C=US,O=Google\\, Inc,CN=Google Cloud SQL Server CA,dnQualifier=27d0c91b-c6c3-43fe-9abf-65e415d422dc"
              - create_time      = "2022-07-14T17:28:40.418Z"
              - expiration_time  = "2032-07-11T17:29:40.418Z"
              - sha1_fingerprint = "693b3ae6114561cf384ece610892bf68832f34a2"
            },
        ] -> null
      - service_account_email_address = "p919285354424-qoync9@gcp-sa-cloud-sql.iam.gserviceaccount.com" -> null

      - settings {
          - activation_policy           = "ALWAYS" -> null
          - authorized_gae_applications = [] -> null
          - availability_type           = "ZONAL" -> null
          - crash_safe_replication      = false -> null
          - disk_autoresize             = true -> null
          - disk_size                   = 10 -> null
          - disk_type                   = "PD_SSD" -> null
          - pricing_plan                = "PER_USE" -> null
          - replication_type            = "SYNCHRONOUS" -> null
          - tier                        = "db-f1-micro" -> null
          - user_labels                 = {} -> null
          - version                     = 2 -> null

          - backup_configuration {
              - binary_log_enabled             = false -> null
              - enabled                        = true -> null
              - point_in_time_recovery_enabled = false -> null
              - start_time                     = "1:00" -> null
              - transaction_log_retention_days = 7 -> null

              - backup_retention_settings {
                  - retained_backups = 7 -> null
                  - retention_unit   = "COUNT" -> null
                }
            }

          - ip_configuration {
              - ipv4_enabled = true -> null
              - require_ssl  = false -> null

              - authorized_networks {
                  - value = "0.0.0.0/0" -> null
                }
            }

          - location_preference {
              - zone = "us-east4-a" -> null
            }

          - maintenance_window {
              - day  = 7 -> null
              - hour = 3 -> null
            }
        }
    }

  # google_sql_user.postgresql_user will be destroyed
  - resource "google_sql_user" "postgresql_user" {
      - id       = "dbadmin//mydbpostgrespwd-db1" -> null
      - instance = "mydbpostgrespwd-db1" -> null
      - name     = "dbadmin" -> null
      - password = (sensitive value)
      - project  = "gifted-pillar-354815" -> null
    }

  # random_id.user_password will be destroyed
  - resource "random_id" "user_password" {
      - b64_std     = "1EYg5Myhvps=" -> null
      - b64_url     = "1EYg5Myhvps" -> null
      - byte_length = 8 -> null
      - dec         = "15295949351468252827" -> null
      - hex         = "d44620e4cca1be9b" -> null
      - id          = "1EYg5Myhvps" -> null
    }

Plan: 0 to add, 0 to change, 4 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

google_sql_user.postgresql_user: Destroying... [id=dbadmin//mydbpostgrespwd-db1]
google_sql_database.postgresql_db: Destroying... [id=projects/gifted-pillar-354815/instances/mydbpostgrespwd-db1/databases/tfdb]
google_sql_user.postgresql_user: Destruction complete after 1s
random_id.user_password: Destroying... [id=1EYg5Myhvps]
random_id.user_password: Destruction complete after 0s
google_sql_database.postgresql_db: Destruction complete after 1s
google_sql_database_instance.postgresql: Destroying... [id=mydbpostgrespwd-db1]
╷
│ Error: Error, failed to delete instance because deletion_protection is set to true. Set it to false to proceed with instance 
deletion


Error: Error, failed to create instance mydbpostgrespwd-db1: googleapi: 
Error 409: The Cloud SQL instance already exists.
When you delete an instance, you can't reuse the name of the deleted instance until one week from the deletion date., instanceAlreadyExists
