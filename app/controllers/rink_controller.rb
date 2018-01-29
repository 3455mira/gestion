class RinkController < ApplicationController
  def index
    @rinks = Syoji.where(user_id: session[:usr]).select(:url_syo,:title_syo).distinct.order("url_syo")
  end
end
