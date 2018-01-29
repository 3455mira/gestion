class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]

  # GET /genres
  # GET /genres.json
  def index
    @genres = Genre.all
  end

  # GET /genres/1
  # GET /genres/1.json
  def show
  end

  # GET /genres/new
  def new
    @genre = Genre.new
  end

  # GET /genres/1/edit
  def edit
  end

  # POST /genres
  # POST /genres.json
  def create
    @genre = Genre.new
    @genre.color_g = params[:genre][:color_g]
    @genre.image_g = params[:genre][:image_g]
    if params[:genre][:image_g].present?
      @genre.image_g = params[:genre][:image_g].original_filename
      @genre.image_type = params[:genre][:image_g].content_type
      @genre.image_binary = params[:genre][:image_g].read
    end

    if @genre.save
      redirect_to genres_path
    else
      render :new
    end
  end

  # PATCH/PUT /genres/1
  # PATCH/PUT /genres/1.json
  def update
      @genre = Genre.find(params[:id])
      @genre.color_g = params[:genre][:color_g]
      @genre.image_g = params[:genre][:image_g]
    if params[:genre][:image_g].present?
      @genre.image_g = params[:genre][:image_g].original_filename
      @genre.image_type = params[:genre][:image_g].content_type
      @genre.image_binary = params[:genre][:image_g].read
    end
  
    if @genre.save
      redirect_to genres_path
    else
      render :edit
    end
  end

  # DELETE /genres/1
  # DELETE /genres/1.json
  def destroy
    @genre.destroy
    respond_to do |format|
      format.html { redirect_to genres_url, notice: 'Genre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def show_image
    @genre = Genre.find(params[:id])
    send_data @genre.image_binary, :filename => @genre.image_g, :type => @genre.image_type, :disposition => 'inline'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_params
      params.require(:genre).permit(:color_g, :image_g, :image_binary, :image_type)
    end
end