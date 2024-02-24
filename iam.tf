resource "google_service_account" "demo_service_account" {
  for_each     = local.accounts
  account_id   = each.value.account_id
  display_name = each.value.display_name
}

resource "google_project_iam_member" "demo_iam_member" {
  for_each = local.accounts
  project  = var.project_id
  role     = each.value.role
  member   = "serviceAccount:${google_service_account.default[each.key].email}"
}