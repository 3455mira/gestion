class SchesController < ApplicationController
  before_action :set_sch, only: [:show, :edit, :update, :destroy]

  # GET /sches
  # GET /sches.json
  def index
    @sches = Sche.all.order(notification_time: "DESC")
  end

  # GET /sches/1
  # GET /sches/1.json
  def show
  end

  # GET /sches/new
  def new
    @sch = Sche.new
  end

  # GET /sches/1/edit
  def edit
  end

  # POST /sches
  # POST /sches.json
  def create
    @sch = Sche.new
    @sch.schedule_at       = DateTime.new(params[:sche][:'schedule_at(1i)'].to_i,
                                          params[:sche][:'schedule_at(2i)'].to_i,
                                          params[:sche][:'schedule_at(3i)'].to_i,
                                          params[:sche][:'schedule_at(4i)'].to_i,
                                          params[:sche][:'schedule_at(5i)'].to_i,
                                          00)
    @sch.name_sche         = params[:sche][:name_sche]
    @sch.icon_id           = params[:sche][:icon_id]
    @sch.place             = params[:sche][:place]
    @sch.memo_sche         = params[:sche][:memo_sche]
    @sch.notification_sche = params[:sche][:notification_sche]
    @sch.mail_sche         = params[:sche][:mail_sche]
    @sch.notification_time = DateTime.new(params[:sche][:'notification_time(1i)'].to_i,
                                          params[:sche][:'notification_time(2i)'].to_i,
                                          params[:sche][:'notification_time(3i)'].to_i,
                                          params[:sche][:'notification_time(4i)'].to_i,
                                          params[:sche][:'notification_time(5i)'].to_i,
                                          00)
    @sch.snooze            = params[:sche][:snooze]
    @sch.user_id           = params[:sche][:user_id]

    if @sch.save
      redirect_to sches_path
    else
      render :new
    end
  end

  # PATCH/PUT /sches/1
  # PATCH/PUT /sches/1.json
  def update
    @sch = Sche.find(params[:id])
    @sch.schedule_at       = DateTime.new(params[:sche][:'schedule_at(1i)'].to_i,
                                          params[:sche][:'schedule_at(2i)'].to_i,
                                          params[:sche][:'schedule_at(3i)'].to_i,
                                          params[:sche][:'schedule_at(4i)'].to_i,
                                          params[:sche][:'schedule_at(5i)'].to_i,
                                         00)
    @sch.name_sche         = params[:sche][:name_sche]
    @sch.icon_id           = params[:sche][:icon_id]
    @sch.place             = params[:sche][:place]
    @sch.memo_sche         = params[:sche][:memo_sche]
    @sch.notification_sche = params[:sche][:notification_sche]
    @sch.mail_sche         = params[:sche][:mail_sche]
    @sch.notification_time = DateTime.new(params[:sche][:'notification_time(1i)'].to_i,
                                          params[:sche][:'notification_time(2i)'].to_i,
                                          params[:sche][:'notification_time(3i)'].to_i,
                                          params[:sche][:'notification_time(4i)'].to_i,
                                          params[:sche][:'notification_time(5i)'].to_i,
                                          00)
    @sch.snooze            = params[:sche][:snooze]
    @sch.user_id           = params[:sche][:user_id]

    if @sch.save
      redirect_to sches_path
    else
      render :edit
    end
  end

  # DELETE /sches/1
  # DELETE /sches/1.json
  def destroy
    @sch = Sche.find(params[:id])
    @sch.destroy

    redirect_to sches_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sch
      @sch = Sche.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sch_params
      params.require(:sche).permit(:schedule_at, :name_sche, :icon_id, :place, :memo_sche, :notification_sche, :mail_sche, :notification_time, :snooze, :user_id)
    end
end
