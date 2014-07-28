class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @user = Userbase.find_by_id(params['id'])
  end
  
  def create
    g = Userbase.new
    g.name = params['name']
    g.email = params['email']
    g.save
    redirect_to "/userpage/#{ g.id }"
  end
    
    
end
