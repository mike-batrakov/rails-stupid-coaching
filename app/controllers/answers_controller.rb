# frozen_string_literal: true

class AnswersController < ApplicationController
  def answer
    @user_question = params[:question]
    @answer = if @user_question.include? '?'
                'Silly question, get dressed and go to work!'
              elsif @user_question == 'I am going to work right now!'.upcase ||
                    @user_question == 'I am going to work right now!'.downcase
                ''
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
