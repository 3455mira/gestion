class TutiController < ApplicationController
  
  def index
    @syoji_ts = Syoji.where(user_id: session[:usr]).order(notification_time: "DESC")
    @sche_ts = Sche.where(user_id: session[:usr]).order(notification_time: "DESC")
  
  end
end
