class ArticlesController < ApplicationController
  before_action :new_subscriber 

  def show 
    render template: "articles/#{params[:article]}"
    @subscriber = Subscriber.new
  end

  private 

  def new_subscriber 
  	@subscriber = Subscriber.new
  end 

end
