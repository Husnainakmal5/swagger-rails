require "swagger_helper"
RSpec.describe "api/v1/books_controller", type: :request do
  path "/api/v1/books" do
    get "Book Listing" do
      tags "Books"
      consumes "application/json"
      parameter name: :encounter, in: :query, schema: {
        type: :object,
        properties: {
          user_id: { type: :integer },
          book_id: { type: :integer },
        },
        required: ["user_id", "book_id"],
      }
      response "200", "fetch data" do
        let(:encounter) { { user_id: 10, book_id: 1 } }
        run_test!
      end
    end
  end
end