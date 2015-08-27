class PracticeQuestionsController < ApplicationController
  def index
    @practice_questions = PracticeQuestion.all
  end

  def show
    @practice_question = PracticeQuestion.find(params[:id])
  end

  def new
    @practice_question = PracticeQuestion.new
  end

  def create
    @practice_question = PracticeQuestion.new
    @practice_question.response = params[:response]
    @practice_question.practice_interview_id = params[:practice_interview_id]
    @practice_question.question_id = params[:question_id]

    if @practice_question.save
      redirect_to "/practice_questions", :notice => "Practice question created successfully."
    else
      render 'new'
    end
  end

  def edit
    @practice_question = PracticeQuestion.find(params[:id])
  end

  def update
    @practice_question = PracticeQuestion.find(params[:id])

    @practice_question.response = params[:response]
    @practice_question.practice_interview_id = params[:practice_interview_id]
    @practice_question.question_id = params[:question_id]

    if @practice_question.save
      redirect_to "/practice_questions", :notice => "Practice question updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @practice_question = PracticeQuestion.find(params[:id])

    @practice_question.destroy

    redirect_to "/practice_questions", :notice => "Practice question deleted."
  end
end
