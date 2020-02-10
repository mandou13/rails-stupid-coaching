class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @coach = 'Great!' if @answer == 'I am going to work'
    @coach = 'Silly question, get dressed and go to work!' if @answer.include?('?')
    @coach = "I don't care, get dressed and go to work!"
  end
end
