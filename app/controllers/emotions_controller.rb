class EmotionsController < ApplicationController
  before_action :set_emotionable

  def emote
    if @emotionable.has_emotion?(current_user)
      @emotionable.update_emotion(params[:emoji], current_user)
    else
      @emotionable.add_emotion(params[:emoji], current_user)
    end
  end

  def remove_emotion
    @emotionable.remove_emotion(current_user)
  end

  private

  def set_emotionable
    emotionable_type = params[:emotionable_type]
    @emotionable = emotionable_type.constantize.find(params[:emotionable_id])
  end
end
