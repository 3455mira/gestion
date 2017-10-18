class IconsController < ApplicationController
  before_action :set_icon, only: [:show, :edit, :update, :destroy]

  # GET /icons
  # GET /icons.json
  def index
    @icons = Icon.all
  end

  # GET /icons/1
  # GET /icons/1.json
  def show
  end

  # GET /icons/new
  def new
    @icon = Icon.new
  end

  # GET /icons/1/edit
  def edit
  end

  # POST /icons
  # POST /icons.json
  def create
    @icon = Icon.new
    @icon.name_icon = params[:icon][:name_icon]
    if params[:icon][:image_icon].present?
      @icon.image_icon = params[:icon][:image_icon].original_filename
      @icon.image_type = params[:icon][:image_icon].content_type
      @icon.image_binary = params[:icon][:image_icon].read
    end
    if @icon.save
      redirect_to icons.path
    else
      render :new
    end
  end

  # PATCH/PUT /icons/1
  # PATCH/PUT /icons/1.json
  def update
    @icon = Icon.find(params[:id])
    @icon.name_icon = params[:icon][:name_icon]
    if params[:icon][:image_icon].present?
      @icon.image_icon = params[:icon][:image_icon].original_filename
      @icon.image_type = params[:icon][:image_icon].content_type
      @icon.image_binary = params[:icon][:image_icon].read
    end
    if @icon.save
      redirect_to icons_path
    else
      render :edit
    end
  end
def show_image
  @icon = Icon.find(params[:id])
  send_data @icon.image_binary, :filename => @icon.image_icon, :type => @icon.image_type, :disposition => 'inline'
end
  # DELETE /icons/1
  # DELETE /icons/1.json
  def destroy
    @icon.destroy
    respond_to do |format|
      format.html { redirect_to icons_url, notice: 'アイコンの削除に成功しました」' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icon
      @icon = Icon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icon_params
      params.require(:icon).permit(:name_icon, :image_icon, :image_binary, :image_type)
    end
end
