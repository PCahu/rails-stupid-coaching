class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = params[:question]
    if @response == "I am going to work right now!"
      @answer = "Great"
    elsif @response.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
