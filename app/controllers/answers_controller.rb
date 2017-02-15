class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to user_questions_path(current_user.id)
    else
      render :new
    end
  end

private
  def answer_params
    params.require(:answer).permit(:content, :author)
  end
end
