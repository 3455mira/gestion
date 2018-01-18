class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :check_logined
  # GET /users
  # GET /users.json
  def index
    @users = User.where(id: session[:usr])
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new
    @user.name_user = params[:user][:name_user]
    @user.mail_user = params[:user][:mail_user]
    @user.pass_user = params[:user][:pass_user]
   
    if params[:user][:icon_user].present?
      @user.icon_user = params[:user][:icon_user].original_filename
      @user.image_type = params[:user][:icon_user].content_type
      @user.image_binary = params[:user][:icon_user].read
    end
 
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user.name_user = params[:user][:name_user]
    @user.mail_user = params[:user][:mail_user]
    @user.pass_user = params[:user][:pass_user]
   
    if params[:user][:icon_user].present?
      @user.icon_user = params[:user][:icon_user].original_filename
      @user.image_type = params[:user][:icon_user].content_type
      @user.image_binary = params[:user][:icon_user].read
    end
 
    if @user.save
      redirect_to users_path
    else
      render :edit
    end
  end
  
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'アカウントの削除に成功しました' }
      format.json { head :no_content }
    end
  end
  def show_image
    @user = User.find(params[:id])
    send_data @user.image_binary, :filename => @user.icon_user, :type => @user.image_type, :disposition => 'inline'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name_user, :mail_user, :pass_user, :icon_user)
    end
end
