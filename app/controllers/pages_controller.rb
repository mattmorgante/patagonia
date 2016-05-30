class PagesController < ApplicationController
  before_action :new_subscriber, only: [:show, :index]

  def index
  end

  def blog_post 
  end 

  def contact 
  end 

  def show
    
  end 

  def buy
  end

  private 

    def new_subscriber 
      @subscriber = Subscriber.new
    end 

end
