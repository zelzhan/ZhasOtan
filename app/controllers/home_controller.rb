class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def about_us
  end

  def subscription
  end

  def contact
  end

end
