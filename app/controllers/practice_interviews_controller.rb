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
    if Question.count < 5
      redirect_to "/questions", :notice => "Need at least five questions for practice interview; please add questions"
    end

    @practice_interview = PracticeInterview.new
    @practice_interview.user_id = params[:user_id]

    if @practice_interview.save

      @pq_1 = PracticeQuestion.new
      @pq_2 = PracticeQuestion.new
      @pq_3 = PracticeQuestion.new
      @pq_4 = PracticeQuestion.new
      @pq_5 = PracticeQuestion.new

      b = @practice_interview.id
      @pq_1.practice_interview_id = b
      @pq_2.practice_interview_id = b
      @pq_3.practice_interview_id = b
      @pq_4.practice_interview_id = b
      @pq_5.practice_interview_id = b

      #select 5 random and unique questions for practice interview
      a = Question.limit(5).order("RANDOM()").pluck(:id)

      @pq_1.question_id = a.first
      @pq_2.question_id = a.second
      @pq_3.question_id = a.third
      @pq_4.question_id = a.fourth
      @pq_5.question_id = a.fifth

      @pq_1.save
      @pq_2.save
      @pq_3.save
      @pq_4.save
      @pq_5.save

      redirect_to "/practice_interviews", :notice => "Practice interview created successfully."
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
