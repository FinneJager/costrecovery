class UsersController < ApplicationController
 before_filter :authenticate

 def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
	    redirect_to incidents_path, :notice => 'User successfully added.'
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = current_user
  end
  
  def show
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_path, :notice => 'Successfully updated Email/Login.'
    else
      render :action => 'edit'
    end
  end
  
 
end
