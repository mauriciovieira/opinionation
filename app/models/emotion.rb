class Emotion < ApplicationRecord
  belongs_to :emotionable, polymorphic: true
  belongs_to :user
end
