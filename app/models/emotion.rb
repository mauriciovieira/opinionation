class Emotion < ApplicationRecord
  belongs_to :emotionable, polymorphic: true
  belongs_to :user

  enum emoji: %i[like love haha wow sad angry]
end
