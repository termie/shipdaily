class StaticController < ApplicationController
  def index
    puts current_user.inspect
  end

  def about
  end

end
