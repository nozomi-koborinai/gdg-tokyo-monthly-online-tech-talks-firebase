locals {
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
        "created_at" = {
          "timestampValue" = timestamp()
        },
        "updated_at" = {
          "timestampValue" = timestamp()
        }
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
        "created_at" = {
          "timestampValue" = timestamp()
        },
        "updated_at" = {
          "timestampValue" = timestamp()
        }
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
        "created_at" = {
          "timestampValue" = timestamp()
        },
        "updated_at" = {
          "timestampValue" = timestamp()
        }
      })
    },
  ]
}
