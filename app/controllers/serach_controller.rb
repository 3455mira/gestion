class SerachController < ApplicationController
  def index
  end

  def search
    name=params[:name]
    @sche = Sche.where(user_id: session[:usr].to_i).where("name_sche like '%"+name+"%'")
  end
end
