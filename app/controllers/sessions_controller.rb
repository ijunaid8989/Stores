class SessionsController < ApplicationController
  def index
  end
  def create
  	admin = Admin.find_by_username(params[:username])
    # If the user exists AND the password entered is correct.
    if admin && admin.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:admin_id] = admin.id
      redirect_to '/' , :notice => "Admin Logged in"
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/adminroute'
    end
  end
  def destroy
    session[:admin_id] = nil
    redirect_to '/adminroute'
  end
end
