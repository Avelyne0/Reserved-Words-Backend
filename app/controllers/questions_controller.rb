class QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :edit, :update, :destroy]

  def index
    questions = Question.all
    render json: questions, except: [:updated_at, :created_at]
  end

  def create
    question = Question.create question_params
    render json: question, except: [:updated_at, :created_at]
  end

  def show
    render json: question, except: [:updated_at, :created_at]
  end

  def update
    question.update question_params
    render json: question, except: [:updated_at, :created_at]
  end

  def destroy
  end

  private

  def find_question
    question = Question.find params[:id]
  end

  def question_params
    params.require(:question).permit(:word, :taboo1, :taboo2, :taboo3, :taboo4)
  end
end
