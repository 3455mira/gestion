class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_logined

  private
  def check_logined
    if session[:usr]then

    begin
      @usr = User.find(session[:uer])
    rescue ActiveRecord::RecordNotFound
      reset_session
    end
  end
  unless @usrflash[:referer] = request.fullpath
    redirect_tocontroller: :login,action: :index
  end
end
end
