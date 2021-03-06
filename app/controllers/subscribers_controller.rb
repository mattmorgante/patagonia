class SubscribersController < ApplicationController
  def index
  	@subscriber = Subscriber.new
  end

  def create 
  	@subscriber = Subscriber.new(subscriber_params)
  	if @subscriber.save 
  		flash[:notice] = "Saved Successfully! Now check out some of our blog posts."
      redirect_to '/articles/index'
  	else 
  		flash[:notice] = "Failed to save. Please try again!"
      redirect_to subscribers_path
  	end 
  end 

  private 
  	def subscriber_params
  		params.require(:subscriber).permit(:name, :email, :source)
  	end 
end
