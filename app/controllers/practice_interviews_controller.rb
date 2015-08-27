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
    @practice_interview = PracticeInterview.new
    @practice_interview.user_id = params[:user_id]

    if @practice_interview.save
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
