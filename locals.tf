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
  }
}
