class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(username: params['usernameValue'], password: params['passwordValue'], name: params['firstNameValue'])
    render json: user
  end

  def show
    render json: current_user
  end

end
