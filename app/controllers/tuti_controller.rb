class TutiController < ApplicationController
  
  def index
    @syoji = Syoji.where(user_id: session[:usr]).order(notification_time: "DESC")
    @sche = Sche.where(user_id: session[:usr]).order(notification_time: "DESC")
  
  end
end
