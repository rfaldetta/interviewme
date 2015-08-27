class PracticeInterviewsController < ApplicationController
  def index
    @practice_interviews = PracticeInterview.all
  end

  def show
    @practice_interview = PracticeInterview.find(params[:id])
  end

  def new
    @practice_interview = PracticeInterview.new
  end

  def create
    if Question.count < 2
      redirect_to "/questions", :notice => "Need at least two questions for practice interview; please add questions"
    end

    @practice_interview = PracticeInterview.new
    @practice_interview.user_id = params[:user_id]

    if @practice_interview.save
      a = rand(Question.count) + 1
      b = rand(Question.count) + 1
      while b == a
        b = rand(Question.count) + 1
      end

      @practice_question_1 = PracticeQuestion.new
      @practice_question_1.practice_interview_id = @practice_interview.id
      @practice_question_1.question_id = a

      @practice_question_2 = PracticeQuestion.new
      @practice_question_2.practice_interview_id = @practice_interview.id
      @practice_question_2.question_id = b

      if @practice_question_1.save && @practice_question_2.save
        redirect_to "/practice_interviews", :notice => "Practice interview created successfully."
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def edit
    @practice_interview = PracticeInterview.find(params[:id])
  end

  def update
    @practice_interview = PracticeInterview.find(params[:id])

    @practice_interview.user_id = params[:user_id]

    if @practice_interview.save
      redirect_to "/practice_interviews", :notice => "Practice interview updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @practice_interview = PracticeInterview.find(params[:id])

    @practice_interview.destroy

    redirect_to "/practice_interviews", :notice => "Practice interview deleted."
  end
end
