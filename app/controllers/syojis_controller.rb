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
    @syoji = Syoji.new(syoji_params)

    respond_to do |format|
      if @syoji.save
        format.html { redirect_to @syoji, notice: 'Syoji was successfully created.' }
        format.json { render :show, status: :created, location: @syoji }
      else
        format.html { render :new }
        format.json { render json: @syoji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syojis/1
  # PATCH/PUT /syojis/1.json
  def update
    respond_to do |format|
      if @syoji.update(syoji_params)
        format.html { redirect_to @syoji, notice: 'Syoji was successfully updated.' }
        format.json { render :show, status: :ok, location: @syoji }
      else
        format.html { render :edit }
        format.json { render json: @syoji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syojis/1
  # DELETE /syojis/1.json
  def destroy
    @syoji.destroy
    respond_to do |format|
      format.html { redirect_to syojis_url, notice: 'Syoji was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syoji
      @syoji = Syoji.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syoji_params
      params.require(:syoji).permit(:title_syo, :artist, :color_j, :title_j, :release, :snooze, :image_syo, :image_binary, :image_type, :memo_syo, :url_syo, :notification_syo, :mail_syo, :notification_time, :category)
    end
end
