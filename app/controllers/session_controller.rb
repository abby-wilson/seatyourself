class SessionController < ApplicationController

def new
  @session = Session.new
end

def create
  @session = Session.new
  user = User.find_by_email(params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to '/homepage'

  else
    redirect_to '/login'
  end

end

def destroy
  session[:user_id] = nil
  redirect_to '/login'
end

end
