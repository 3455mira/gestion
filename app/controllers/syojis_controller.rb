class SyojisController < ApplicationController
  before_action :set_syoji, only: [:show, :edit, :update, :destroy]

  # GET /syojis
  # GET /syojis.json
  def index
    @syojis = Syoji.all
  end

  # GET /syojis/1
  # GET /syojis/1.json
  def show
  end

  # GET /syojis/new
  def new
    @syoji = Syoji.new
  end

  # GET /syojis/1/edit
  def edit
  end

  # POST /syojis
  # POST /syojis.json
  def create
    @syoji = Syoji.new
    @syoji.title_syo         = params[:syoji][:title_syo]
    @syoji.artist            = params[:syoji][:artist]
    @syoji.color_j           = params[:syoji][:color_j]
    @syoji.title_j           = params[:syoji][:title_j]
    @syoji.image_syo         = params[:syoji][:image_syo]
    @syoji.memo_syo          = params[:syoji][:memo_syo]
    @syoji.url_syo           = params[:syoji][:url_syo]
    @syoji.release           = Date.new(params[:syoji][:'release(1i)'].to_i,
                                        params[:syoji][:'release(2i)'].to_i,
                                        params[:syoji][:'release(3i)'].to_i,)
    @syoji.notification_syo  = params[:syoji][:notification_syo]
    @syoji.mail_syo          = params[:syoji][:mail_syo]
    @syoji.notification_time = DateTime.new(params[:syoji][:'notification_time(1i)'].to_i,
                                            params[:syoji][:'notification_time(2i)'].to_i,
                                            params[:syoji][:'notification_time(3i)'].to_i,
                                            params[:syoji][:'notification_time(4i)'].to_i,
                                            params[:syoji][:'notification_time(5i)'].to_i,
                                            00)
    @syoji.snooze            = params[:syoji][:snooze]
    @syoji.category          = params[:syoji][:category]
    
    if @syoji.save
      redirect_to syojis_path
    else
      render :new
    end
  end

  # PATCH/PUT /syojis/1
  # PATCH/PUT /syojis/1.json
  def update
    @syoji = Syoji.find(params[:id])
    @syoji.title_syo         = params[:syoji][:title_syo]
    @syoji.artist            = params[:syoji][:artist]
    @syoji.color_j           = params[:syoji][:color_j]
    @syoji.title_j           = params[:syoji][:title_j]
    @syoji.image_syo         = params[:syoji][:image_syo]
    @syoji.memo_syo          = params[:syoji][:memo_syo]
    @syoji.url_syo           = params[:syoji][:url_syo]
    @syoji.release           = Date.new(params[:syoji][:'release(1i)'].to_i,
                                        params[:syoji][:'release(2i)'].to_i,
                                        params[:syoji][:'release(3i)'].to_i,)
    @syoji.notification_syo  = params[:syoji][:notification_syo]
    @syoji.mail_syo          = params[:syoji][:mail_syo]
    @syoji.notification_time = DateTime.new(params[:syoji][:'notification_time(1i)'].to_i,
                                            params[:syoji][:'notification_time(2i)'].to_i,
                                            params[:syoji][:'notification_time(3i)'].to_i,
                                            params[:syoji][:'notification_time(4i)'].to_i,
                                            params[:syoji][:'notification_time(5i)'].to_i,
                                            00)
    @syoji.snooze            = params[:syoji][:snooze]
    @syoji.category          = params[:syoji][:category]
    
    if @syoji.save
      redirect_to syojis_path
    else
      render :edit
    end
  end

  # DELETE /syojis/1
  # DELETE /syojis/1.json
  def destroy
    @syoji = Syoji.find(params[:id])
    @syoji.destroy

    redirect_to syojis_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syoji
      @syoji = Syoji.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syoji_params
      params.require(:syoji).permit(:title_syo, :artist, :color_j, :title_j, :image_syo, :image_binary, :image_type, :memo_syo, :url_syo, :release, :notification_syo, :mail_syo, :notification_time, :snooze, :category)
    end
end
