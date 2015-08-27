class ResponseLengthsController < ApplicationController
  def index
    @response_lengths = ResponseLength.all
  end

  def show
    @response_length = ResponseLength.find(params[:id])
  end

  def new
    @response_length = ResponseLength.new
  end

  def create
    @response_length = ResponseLength.new
    @response_length.name = params[:name]

    if @response_length.save
      redirect_to "/response_lengths", :notice => "Response length created successfully."
    else
      render 'new'
    end
  end

  def edit
    @response_length = ResponseLength.find(params[:id])
  end

  def update
    @response_length = ResponseLength.find(params[:id])

    @response_length.name = params[:name]

    if @response_length.save
      redirect_to "/response_lengths", :notice => "Response length updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @response_length = ResponseLength.find(params[:id])

    @response_length.destroy

    redirect_to "/response_lengths", :notice => "Response length deleted."
  end
end
