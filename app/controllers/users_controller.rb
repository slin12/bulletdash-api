class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(username: params['usernameValue'], password: params['passwordValue'], name: params['firstNameValue'])
    if user.valid?
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { id: user.id, username: user.username, jwt: token}
    else
      render json: { error: "some bad stuff happened"}
    end
  end

  def show
    render json: current_user
  end

end
