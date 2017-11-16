class SyojiTsController < ApplicationController
  before_action :set_syoji_t, only: [:show, :edit, :update, :destroy]

  # GET /syoji_ts
  # GET /syoji_ts.json
  def index
    @syoji_ts = Syoji.where(user_id: session[:usr]).order(notification_time: "DESC")
  end

  # GET /syoji_ts/1
  # GET /syoji_ts/1.json
  def show
  end

  # GET /syoji_ts/new
  def new
  end

  # GET /syoji_ts/1/edit
  def edit
  end

  # POST /syoji_ts
  # POST /syoji_ts.json
  def create
    @syoji_t = SyojiT.new(syoji_t_params)

    respond_to do |format|
      if @syoji_t.save
        format.html { redirect_to @syoji_t, notice: 'Syoji t was successfully created.' }
        format.json { render :show, status: :created, location: @syoji_t }
      else
        format.html { render :new }
        format.json { render json: @syoji_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syoji_ts/1
  # PATCH/PUT /syoji_ts/1.json
  def update
    respond_to do |format|
      if @syoji_t.update(syoji_t_params)
        format.html { redirect_to @syoji_t, notice: 'Syoji t was successfully updated.' }
        format.json { render :show, status: :ok, location: @syoji_t }
      else
        format.html { render :edit }
        format.json { render json: @syoji_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syoji_ts/1
  # DELETE /syoji_ts/1.json
  def destroy
    @syoji_t.destroy
    respond_to do |format|
      format.html { redirect_to syoji_ts_url, notice: 'Syoji t was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syoji_t
      @syoji_t = SyojiT.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syoji_t_params
      params.require(:syoji_t).permit(:release, :title, :artist)
    end
end
