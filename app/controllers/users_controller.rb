class UsersController < ApplicationController
  before_filter  :find_user, only:[:show, :edit, :update, :destroy]
  skip_authorization_check :only => [:new, :create]

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the MicroCRM App!"
      redirect_to @user
    else
      render 'new'
    end

  end

  def show

  end
  def edit

  end
  def update
   if @user.update_attributes(params[:user])
     flash[:success] = "Profile updated"
     sign_in @user
     redirect_to @user
   else
         render 'edit'
   end

  end
  def destroy
   @user.destroy
  end

  protected
  def find_user
    @user = User.find(params[:id])
  end


end
