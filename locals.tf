locals {
  # IAM users
  accounts = {
    "User01" = {
      display_name = "デモ用のサービスアカウント①"
      role         = "roles/owner"
    },
    "User02" = {
      display_name = "デモ用のサービスアカウント②"
      role         = "roles/editor"
    },
  }

  # Firestore master data
  docs = [
    {
      collection  = "quiz"
      document_id = "question-1"
      fields = jsonencode({
        "question" = {
          "stringValue" = "First Question"
        },
        "answer" = {
          "stringValue" = "Answer 1"
        },
      })
    },
    {
      collection  = "quiz"
      document_id = "question-2"
      fields = jsonencode({
        "question" = {
          "stringValue" = "Second Question"
        },
        "answer" = {
          "stringValue" = "Answer 2"
        },
      })
    },
    {
      collection  = "quiz"
      document_id = "question-3"
      fields = jsonencode({
        "question" = {
          "stringValue" = "Third Question"
        },
        "answer" = {
          "stringValue" = "Answer 3"
        },
      })
    },
  ]
}
