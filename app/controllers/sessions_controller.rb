class SessionsController < ApplicationController

  skip_before_filter :authenticate, except: [:destroy]

  def new
  end

  def create
    if params[:password] == ENV['SM_ADMIN_PASSWORD']
      session[:logged_in] = true
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:logged_in] = false
    redirect_to root_path
  end
end
