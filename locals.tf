locals {
  docs = {
    "question-1" = {
      collection  = "quiz"
      document_id = "question-1"
      fields = jsonencode({
        "question" = {
          "stringValue" = "First Question"
        },
        "answer" = {
          "stringValue" = "Answer 1"
        }
      })
    },
    "question-2" = {
      collection  = "quiz"
      document_id = "question-2"
      fields = jsonencode({
        "question" = {
          "stringValue" = "Second Question"
        },
        "answer" = {
          "stringValue" = "Answer 2"
        }
      })
    },
    "question-3" = {
      collection  = "quiz"
      document_id = "question-3"
      fields = jsonencode({
        "question" = {
          "stringValue" = "Third Question"
        },
        "answer" = {
          "stringValue" = "Answer 3"
        }
      })
    },
  }
}
