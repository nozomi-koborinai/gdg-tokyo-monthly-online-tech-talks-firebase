locals {
  accounts = [
    {
      account_id   = "User01"
      display_name = "デモ用のサービスアカウント①"
      role         = "roles/owner"
    },
    {
      account_id   = "User02"
      display_name = "デモ用のサービスアカウント②"
      role         = "roles/editor"
    },
  ]
}

resource "google_service_account" "default" {
  for_each     = { for account in locals.accounts : account.account_id => account }
  account_id   = each.value.account_id
  display_name = each.value.display_name
}

resource "google_project_iam_member" "default" {
  for_each = { for account in locals.accounts : account.account_id => account }
  project  = var.project_id
  role     = each.value.role
  member   = "serviceAccount:${google_service_account.default[each.key].email}"
}