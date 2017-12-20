class RinkController < ApplicationController
  def index
    @rinks = Syoji.where(user_id: session[:usr])
    @rinks = @rinks.select(:url_syo).uniq
  end
end
