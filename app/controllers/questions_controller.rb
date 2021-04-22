class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    if ask.include? "?"
      @answer = "Stupid question, get back to work!"
    elsif ask.downcase == "i am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get back to work!"
    end
  end
end
