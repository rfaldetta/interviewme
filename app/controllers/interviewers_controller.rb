class InterviewersController < ApplicationController
  def index
    @interviewers = Interviewer.all
  end

  def show
    @interviewer = Interviewer.find(params[:id])
  end

  def new
    @interviewer = Interviewer.new
  end

  def create
    @interviewer = Interviewer.new
    @interviewer.name = params[:name]

    if @interviewer.save
      redirect_to "/interviewers", :notice => "Interviewer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interviewer = Interviewer.find(params[:id])
  end

  def update
    @interviewer = Interviewer.find(params[:id])

    @interviewer.name = params[:name]

    if @interviewer.save
      redirect_to "/interviewers", :notice => "Interviewer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interviewer = Interviewer.find(params[:id])

    @interviewer.destroy

    redirect_to "/interviewers", :notice => "Interviewer deleted."
  end
end
