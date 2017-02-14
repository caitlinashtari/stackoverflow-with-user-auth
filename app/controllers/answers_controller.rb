class AnswersController < ActionController::Base

  def index
    @answers = Answer.all
end
