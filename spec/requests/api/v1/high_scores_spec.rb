require "swagger_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "api/v1/high_scores", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # HighScore. As you add validations to HighScore, be sure to
  # adjust the attributes here as well.

  path "/api/v1/high_scores" do
    get "High Score Listing" do
      tags "High Score"
      consumes "application/json"
      response "200", "fetch data" do
        run_test!
      end
    end
  end

  path "/api/v1/high_scores/{id}" do
    get "High Score Show" do
      tags "High Score"
      consumes "application/json"
      parameter name: :id, in: :path, type: :string

      response "200", "Get single record" do
        run_test!
      end
    end
  end

  path "/api/v1/high_scores/{id}/{nameId}" do
    get "High Score Show" do
      tags "High Score"
      consumes "application/json"
      parameter name: :id, in: :path, type: :string
      parameter name: :nameId, in: :path, type: :string

      response "200", "Get single record" do
        run_test!
      end
    end
  end

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      HighScore.create! valid_attributes
      get high_scores_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      high_score = HighScore.create! valid_attributes
      get high_score_url(high_score)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_high_score_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      high_score = HighScore.create! valid_attributes
      get edit_high_score_url(high_score)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new HighScore" do
        expect {
          post high_scores_url, params: { high_score: valid_attributes }
        }.to change(HighScore, :count).by(1)
      end

      it "redirects to the created high_score" do
        post high_scores_url, params: { high_score: valid_attributes }
        expect(response).to redirect_to(high_score_url(HighScore.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new HighScore" do
        expect {
          post high_scores_url, params: { high_score: invalid_attributes }
        }.to change(HighScore, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post high_scores_url, params: { high_score: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested high_score" do
        high_score = HighScore.create! valid_attributes
        patch high_score_url(high_score), params: { high_score: new_attributes }
        high_score.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the high_score" do
        high_score = HighScore.create! valid_attributes
        patch high_score_url(high_score), params: { high_score: new_attributes }
        high_score.reload
        expect(response).to redirect_to(high_score_url(high_score))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        high_score = HighScore.create! valid_attributes
        patch high_score_url(high_score), params: { high_score: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested high_score" do
      high_score = HighScore.create! valid_attributes
      expect {
        delete high_score_url(high_score)
      }.to change(HighScore, :count).by(-1)
    end

    it "redirects to the high_scores list" do
      high_score = HighScore.create! valid_attributes
      delete high_score_url(high_score)
      expect(response).to redirect_to(high_scores_url)
    end
  end
end
