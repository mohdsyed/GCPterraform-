# define the GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}
# define GCP project name
variable "app_project" {
  type        = string
  description = "GCP project name"
  default     = "gifted-pillar-354815"
}
variable "app_name" {
  type        = string
  description = "GCP project name"
  default     =  "mypostgressql"
}
# define GCP region
variable "gcp_region_1" {
  type        = string
  description = "GCP region"
  default     = "us-east4"
}
# define GCP region
variable "gcp_region_2" {
  type        = string
  description = "GCP region"
  default     = "us-east4"
}
# define GCP zone
variable "gcp_zone_1" {
  type        = string
  description = "GCP zone"
  default     = "us-east4-a"
}
# define GCP zone
variable "gcp_zone_2" {
  type        = string
  description = "GCP zone"
  default     = "us-east4-b"
}
