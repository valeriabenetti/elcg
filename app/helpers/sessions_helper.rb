module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Forgets a persistent sessions.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Remembers a user in a persistens session.
  def remember(user)
    user.remember
    cookies.permanenet.signed[:user_id] = user.id
    cokkies.permanenet[:remember_token] = user.remember_token
  end

  # Returns the current loggen-in user (if any).
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.fing_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookie[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Returns true if the user is loggen in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end
