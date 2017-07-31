class SessionController < ApplicationController

def new
  @session = Session.new
end

def create
  @session = Session.new
  user = User.find_by_email(params[:email])

  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to '/profile'

  else
    redirect_to '/restaurants'
  end

end

def destroy
  session[:user_id] = nil
  redirect_to '/login'
end

end
