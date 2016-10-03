require "rails_helper"

describe Idea do
  it "defaults to a quality of swill" do
    idea = Idea.create
    expect(idea.quality).to eq("Swill")
    expect(idea.quality).to_not eq("Genius")
  end

  it "can have a different quality when set" do
    plausible = Idea.create(quality: 1)
    genius = Idea.create(quality: 2)

    expect(plausible.quality).to eq("Plausible")
    expect(plausible.quality).to_not eq("Genius")
    expect(genius.quality).to eq("Genius")
    expect(genius.quality).to_not eq("Swill")
  end
end
