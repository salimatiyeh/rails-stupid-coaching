class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    if your_message.include?("?")

      "Silly question, get dressed and go to work!"

    elsif your_message == "I am going to work right now!"

      "Great!"
    else

      "I don't care, get dressed and go to work!"
    end
  end
end
