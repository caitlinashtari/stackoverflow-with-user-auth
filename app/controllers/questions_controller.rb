class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = current_user.questions.new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      redirect_to user_questions_path(current_user.id)
    else
      render :new
    end
  end

private
  def question_params
    params.require(:question).permit(:name, :description)
  end
end
