class RinkController < ApplicationController
  def index
    @links1 = Syoji.where(user_id: session[:usr]).select(:url_syo,:title_syo).distinct.order("url_syo")
    @links2 = Sche.where(user_id: session[:usr]).select(:url_sche,:name_sche).distinct.order("url_sche")
  end
end
