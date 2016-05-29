class SubscribersController < ApplicationController
  def index
  	@subscriber = Subscriber.new
  end

  def create 
  	@subscriber = Subscriber.new(subscriber_params)
  	if @subscriber.save 
  		redirect to subscribers_path, notice: "Saved Successfully!"
  	else 
  		redirect to subscribers_path, notice: "Failed to save. Please try again."
  	end 
  end 

  private 
  	def subscriber_params
  		params.require(:subscriber).permit(:name, :email, :source)
  	end 
end
