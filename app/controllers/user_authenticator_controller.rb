class UserAuthenticatorController < ApplicationController
  def login
    render 'logout' if check_user_session
  end

  def authenticate
    if user_params[:username] == 'dottorx' && user_params[:password] == 'dottorx'
      session[:user_id] = user_params[:username]
      redirect_to :root
    else
      flash.now[:notice] = 'Autenticazione errata'
      render 'login'
    end
  end

  def logout
    if check_user_session
      session[:user_id] = nil
      redirect_to :root
    else
      redirect_to :login
    end
  end

  private

  def check_user_session
    session[:user_id]
  end

  def user_params
    params.permit(:username, :password)
  end
end
