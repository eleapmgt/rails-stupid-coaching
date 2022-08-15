class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = answer_question(params[:question])
  end

  private

  def answer_question(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
