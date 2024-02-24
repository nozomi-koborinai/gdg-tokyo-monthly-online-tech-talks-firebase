locals {
  # IAM users
  # accounts = {
  #   "user01" = {
  #     display_name = "デモ用のサービスアカウント（User01）"
  #     role         = "roles/owner"
  #   },
  #   "user02" = {
  #     display_name = "デモ用のサービスアカウント（User02）"
  #     role         = "roles/editor"
  #   },
  # }

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
