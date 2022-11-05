class QuestionsController < ApplicationController
  
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "i can hear you!"
    elsif @quesion =~/ i am going to work/i
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "silly question, get dressed and go to work"
    else
      @answer= "i dont care, get dress and go to work"
    end
  end
end
