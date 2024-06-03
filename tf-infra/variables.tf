variable "project_id" {
  type        = string
  description = "The project to run tests against"
  default = "tccc-1009"
}

variable "region" {
  description = "The Google Cloud region to deploy Guacamole into"
  default     = "us-central1"
}

variable "zone" {
  description = "For zonal Guacamole resources, deploy into this zone"
  default     = "us-central1-c"
}

variable "network_name" {
  description = "VPC to use for Guacamole resources"
  default     = "guacamole-vpc"
  type        = string
}

variable "db_name" {
  description = "CloudSQL Instance Name"
  default     = "guacamole-mysql"
}

variable "db_username" {
  description = "Guacamole Database User"
  default     = "guac-db-user"
}

variable "external_url" {
  description = "URL used to access Guacamole - defaults to sslip.io, a wildcard DNS service. Change this if you have wish to use your own domain and will create the A record manually."
  default     = "sslip.io"
}

variable "db_management_vm" {
  description = "Google Compute Engine VM used to manage the Guacamole Database."
  default     = "db-mgmt-vm"
}

variable "nwr_master_node" {
  description = "GKE Private Cluster Master Node Network Range"
  default     = "172.16.0.32/28"
}

variable "required_apis" {
  description = "Google Cloud APIs required by this tutorial."
  default = ["cloudresourcemanager.googleapis.com", 
    "serviceusage.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    #"containerregistry.googleapis.com",
    "cloudbuild.googleapis.com",
    "servicenetworking.googleapis.com",
    "iap.googleapis.com",
    "artifactregistry.googleapis.com",
    "sqladmin.googleapis.com",
  "stackdriver.googleapis.com"]
}


# MYSQL 
variable "q_db_name" {
  default = "APP_guacamole_uat"
}

variable "q_db_address" {
  default = "presales-dwh.cluster-cdc6ngw47u0b.us-east-2.rds.amazonaws.com"
}

variable "q_mysql_password" {
  default = "Rps76RycEQ5?@5EB"
}

variable "q_mysql_user" {
  default = "app_guacamole"
}

# OPENID
variable "openid_authorization_endpoint" {
  default = "https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize"
}

variable "openid_jwks_endpoint" {
  default = "https://login.microsoftonline.com/organizations/discovery/v2.0/keys"
}

variable "openid_issuer" {
  default = "https://login.microsoftonline.com/c21eeb5f-f5a6-44e8-a997-124f2f7a497c/v2.0"
}

variable "openid_client_id" {
  default = "40742f13-bde8-4b1b-ac07-54c11b36b779"
}
