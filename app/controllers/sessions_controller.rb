class SessionsController < ApplicationController
 def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end
  
  def destroy
    reset_session
	redirect_to root_path, :notice => "You successfully logged out"
  end
  
  def resetpass
  if request.post?
	@the_email = params[:email]
		
	if User.find_by_email(@the_email)
		@encrypted = User.find_by_email(@the_email).encrypt("irst-1234")
		User.find_by_email(@the_email).hashed_password = @encrypted
		User.find_by_email(@the_email).password = "irst-1234"
		PassReset.send_new_pass(@the_email).deliver
		flash.now[:alert] = "Sent!"
 	else 
		flash.now[:alert] = "Couldn't find a user with the email address you entered."
	end
	
		
	#@name = User.find(@incident.user_id).profile.name
	
  end
  end
  
end
