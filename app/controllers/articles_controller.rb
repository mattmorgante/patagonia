class ArticlesController < ApplicationController
  def show 
    render template: "articles/#{params[:article]}"
    @subscriber = Subscriber.new
  end

end
