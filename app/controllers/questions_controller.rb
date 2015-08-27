class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.user_id = params[:user_id]
    @question.interviewer = params[:interviewer]
    @question.response_length_id = params[:response_length_id]
    @question.category_id = params[:category_id]
    @question.question = params[:question]

    if @question.save
      redirect_to "/questions", :notice => "Question created successfully."
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    @question.user_id = params[:user_id]
    @question.interviewer = params[:interviewer]
    @question.response_length_id = params[:response_length_id]
    @question.category_id = params[:category_id]
    @question.question = params[:question]

    if @question.save
      redirect_to "/questions", :notice => "Question updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])

    @question.destroy

    redirect_to "/questions", :notice => "Question deleted."
  end
end
