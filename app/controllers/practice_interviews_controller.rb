class PracticeInterviewsController < ApplicationController
  def index
    @practice_interviews = current_user.practice_interviews
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

    @pq_1 = @practice_interview.practice_questions.first
    @pq_2 = @practice_interview.practice_questions.second
    @pq_3 = @practice_interview.practice_questions.third
    @pq_4 = @practice_interview.practice_questions.fourth
    @pq_5 = @practice_interview.practice_questions.fifth
  end

  def update
    @practice_interview = PracticeInterview.find(params[:id])
    @practice_interview.user_id = params[:user_id]

    @response_1 = PracticeQuestion.find(params[:pq_1])
    @response_2 = PracticeQuestion.find(params[:pq_2])
    @response_3 = PracticeQuestion.find(params[:pq_3])
    @response_4 = PracticeQuestion.find(params[:pq_4])
    @response_5 = PracticeQuestion.find(params[:pq_5])

    @response_1.response = params[:response_1]
    @response_2.response = params[:response_2]
    @response_3.response = params[:response_3]
    @response_4.response = params[:response_4]
    @response_5.response = params[:response_5]

    @response_1.save
    @response_2.save
    @response_3.save
    @response_4.save
    @response_5.save

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
