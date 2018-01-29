class SerachController < ApplicationController
  def index
  end

  def search
    @name=params[:name]
    @time=params[:time]
    if @name.present? and @time.present?
      @sche = Sche.where(user_id: session[:usr].to_i).where("name_sche like '%"+@name+"%'").where("schedule_at like '%"+@time+"%'")
      @syoji = Syoji.where(user_id: session[:usr].to_i).where("title_syo like '%"+@name+"%'").where("release like '%"+@time+"%'")
    else
      if @name.present?
        @sche = Sche.where(user_id: session[:usr].to_i).where("name_sche like '%"+@name+"%'")
        @syoji = Syoji.where(user_id: session[:usr].to_i).where("title_syo like '%"+@name+"%'")
      end
      if @time.present?
        @sche = Sche.where(user_id: session[:usr].to_i).where("schedule_at like '%"+@time+"%'")
        @syoji = Syoji.where(user_id: session[:usr].to_i).where("release like '%"+@time+"%'")
      end
    end
  end
end
