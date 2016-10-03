class Seed
  def initialize
    create_ideas
  end

  def create_ideas
    puts "Creating Ideas"
    15.times do
      Idea.create!(
        title:   Faker::Company.buzzword,
        body:    Faker::Hipster.paragraph(4),
        quality: (rand(0..2))
      )
    end
    puts "Created Ideas"
  end
end

Seed.new
