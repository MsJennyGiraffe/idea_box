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

  describe "GET#create" do
    it "creates an idea" do
      title = "The Lottery Song"
      body = "If life is just a gamble, gamble if you want to win."

      post "/api/v1/ideas", as: :json, params: { idea: { title: title, body: body } }

      idea = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(idea["title"]).to eq("The Lottery Song")
      expect(idea["body"]).to eq("If life is just a gamble, gamble if you want to win.")
      expect(idea["quality"]).to eq("Swill")
    end
  end

  describe "GET#update" do
    it "updates an idea with different fields" do
      idea = Idea.create(
        title: "Title",
        body: "I'm so original."
      )
      title = "A different title"
      body = "A different body"

      put "/api/v1/ideas/#{idea.id}", as: :json, params: { idea: { title: title, body: body } }

      idea = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(idea["title"]).to eq("A different title")
      expect(idea["body"]).to eq("A different body")
      expect(idea["quality"]).to eq("Swill")
    end

    it "updates an idea with a different field" do
      idea = Idea.create(
        title: "Title",
        body: "I'm so original."
      )
      title = "A different title"

      put "/api/v1/ideas/#{idea.id}", as: :json, params: { idea: { title: title } }

      idea = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(idea["title"]).to eq("A different title")
      expect(idea["body"]).to eq("I'm so original.")
      expect(idea["quality"]).to eq("Swill")
    end
  end
end
