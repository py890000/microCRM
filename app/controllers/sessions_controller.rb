class SessionsController < ApplicationController
  skip_authorization_check :only => [:new, :create]
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
       flash[:success] = "Login Scuccessful!"
       sign_in user
       redirect_to user
    else
      flash[:error] = "Invalid Email/password combination!"
       render 'new'
    end

  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
