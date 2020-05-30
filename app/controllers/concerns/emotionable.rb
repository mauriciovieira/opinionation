module Emotionable
  extend ActiveSupport::Concern

  included do
    has_many :emotions, as: :emotionable
  end

  def add_emotion(emoji, current_user)
    Emotion.create(emotionable: self, user: current_user, emoji: emoji)
  end

  def has_emotion?(current_user)
    set_emotion(current_user)
    @emotion.present? ? @emotion : false
  end

  def update_emotion(emoji, current_user)
    set_emotion(current_user)
    @emotion.update(emoji: emoji)
  end

  def remove_emotion(current_user)
    set_emotion(current_user)
    @emotion.destroy
  end

  private

  def set_emotion(current_user)
    @emotion = Emotion.find_by(emotionable: self, user: current_user)
  end
end
