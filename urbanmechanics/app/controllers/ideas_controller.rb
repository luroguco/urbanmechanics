class IdeasController < ApplicationController
  def index
  end

  def update
  end

  def create
    @idea = current_user.ideas.build(params9(:idea))
    if @idea.save
      flash(:success)="Idea created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'pages/home'
    end
  end

  def new
  end

end
