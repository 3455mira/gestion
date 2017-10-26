class ScheTsController < ApplicationController
  before_action :set_sche_t, only: [:show, :edit, :update, :destroy]

  # GET /sche_ts
  # GET /sche_ts.json
  def index
    @sche_ts = ScheT.all
  end

  # GET /sche_ts/1
  # GET /sche_ts/1.json
  def show
  end

  # GET /sche_ts/new
  def new
    @sche_t = ScheT.new
  end

  # GET /sche_ts/1/edit
  def edit
  end

  # POST /sche_ts
  # POST /sche_ts.json
  def create
    @sche_t = ScheT.new(sche_t_params)

    respond_to do |format|
      if @sche_t.save
        format.html { redirect_to @sche_t, notice: 'Sche t was successfully created.' }
        format.json { render :show, status: :created, location: @sche_t }
      else
        format.html { render :new }
        format.json { render json: @sche_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sche_ts/1
  # PATCH/PUT /sche_ts/1.json
  def update
    respond_to do |format|
      if @sche_t.update(sche_t_params)
        format.html { redirect_to @sche_t, notice: 'Sche t was successfully updated.' }
        format.json { render :show, status: :ok, location: @sche_t }
      else
        format.html { render :edit }
        format.json { render json: @sche_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sche_ts/1
  # DELETE /sche_ts/1.json
  def destroy
    @sche_t.destroy
    respond_to do |format|
      format.html { redirect_to sche_ts_url, notice: 'Sche t was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sche_t
      @sche_t = ScheT.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sche_t_params
      params.require(:sche_t).permit(:schedule_at, :name_sche, :sche_id)
    end
end
