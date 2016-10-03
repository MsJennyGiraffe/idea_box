class Idea < ApplicationRecord
  enum quality: { "Swill": 0, "Plausible": 1, "Genius": 2 }
end
