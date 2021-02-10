# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask
    @user_question = params[:question]
  end
end
