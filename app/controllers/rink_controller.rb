class RinkController < ApplicationController
  def index
    @rinks = Syoji.where(user_id: session[:usr]).select(:url_syo).distinct
  end
end
