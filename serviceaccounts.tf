## SERVICE ACCOUNTS
module "service_accounts" {
  source        = "github.com/the1bit/terraform-google-service-accounts"
  project_id    = var.project-id
  prefix        = "viewer-sa"
  names         = ["dev", "qa","stage","prod"]
  project_roles = [
    "${var.project-id}=>roles/viewer",
    "${var.project-id}=>roles/storage.objectViewer",
  ]
  grant_billing_role = true
  org_id = var.org_id
}