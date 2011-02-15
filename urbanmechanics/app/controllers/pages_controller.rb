class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @idea=Idea.new
      @feed_item = current_user.feed.paginate(:page => params(:page))
    end
  end

end
