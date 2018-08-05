class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.search(params[:term])
    respond_to :js
  end
end