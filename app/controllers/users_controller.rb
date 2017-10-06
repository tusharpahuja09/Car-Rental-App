class UsersController < ApplicationController

  def show

  end

  def index
    @users = User.all
   #render 'users/index.html.erb'
  end
end