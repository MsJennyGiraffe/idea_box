require "rails_helper"

RSpec.describe Api::V1::IdeasController, :type => :request do
  describe "GET#index" do
    it "gets all ideas" do
      idea_one = Idea.create(
        title: "Skylight Doctrine",
        body: "I am the epitome of greatness."
      )
      idea_two = Idea.create(
        title:  "Beast Island",
        body:   "Bring your friends.",
        quality: 2
      )

      get "/api/v1/ideas"
      ideas = JSON.parse(response.body)
      idea_one = ideas.first
      idea_two = ideas.last

      expect(response.status).to eq(200)
      expect(ideas.count).to eq(2)
      expect(idea_one["title"]).to eq("Skylight Doctrine")
      expect(idea_one["body"]).to eq("I am the epitome of greatness.")
      expect(idea_one["quality"]).to eq("Swill")
      expect(idea_two["title"]).to eq("Beast Island")
      expect(idea_two["body"]).to eq("Bring your friends.")
      expect(idea_two["quality"]).to eq("Genius")
    end
  end
end
