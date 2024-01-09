# Provisions the Firestore database instance.
resource "google_firestore_database" "firestore" {
  provider         = google-beta
  project          = var.project_id
  name             = "(default)"
  location_id      = "asia-northeast1"
  type             = "FIRESTORE_NATIVE"
  concurrency_mode = "OPTIMISTIC"

  # Wait for Firebase to be enabled in the Google Cloud project before initializing Firestore.
  depends_on = [
    google_firebase_project.default,
  ]
}

# Creates a ruleset of Firestore Security Rules from a local file.
resource "google_firebaserules_ruleset" "firestore" {
  provider = google-beta
  project  = var.project_id
  source {
    files {
      name    = "firestore.rules"
      content = file("firebase_rules/firestore.rules")
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  # Wait for Firestore to be provisioned before creating this ruleset.
  depends_on = [
    google_firestore_database.firestore,
  ]
}

# Releases the ruleset for the Firestore instance.
resource "google_firebaserules_release" "firestore" {
  provider     = google-beta
  name         = "cloud.firestore"
  ruleset_name = google_firebaserules_ruleset.firestore.name
  project      = var.project_id

  # Wait for Firestore to be provisioned before releasing the ruleset.
  depends_on = [
    google_firestore_database.firestore,
  ]
}

# Adds a new Firestore document with seed data.
resource "google_firestore_document" "docs" {
  for_each    = local.docs
  provider    = google-beta
  project     = var.project_id
  collection  = each.value.collection
  document_id = each.value.document_id
  fields      = each.value.fields

  depends_on = [
    google_firestore_database.firestore,
  ]
}
