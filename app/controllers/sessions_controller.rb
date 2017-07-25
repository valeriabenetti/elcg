class SessionsController < ApplicationController
  # skip_before_action :authroize
  # loggin in
  def new
  end

  # handle the post form the loggin page
  def create
    # Extract the email and password from the params
    email = params[:email]
    password = params[:password]

    # Find the user by their email
    user = User.find_by(email: email)

    # If we have found the user and their password checkout
    if user && user.authenticate(password)
      # Save the user_id in the session cookie
      session[:user_id] = user.id
      # logged in and remembering the user
      remember user
      # Redirect to the lading page
      redirect_to root_path
    else
      # Incorrect log in information
      redirect_to login_path
    end
  end

  # Log Out
  def destroy
    log_out if logged_in?
    # Once logged out, redirect to the landing path
    redirect_to root_path
  end
end
