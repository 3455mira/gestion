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
    genle.color_g=params[:genle][:color_g]
    genle.image_g=params[:genle][:image_g]
    genle.image_binary=params[:genle][:image_binary]
    genle.image_type=params[:genle][:image_type]
  ]if params[:genle][:image_g].present?
    @genle.image_g = params[:genle][:image_g].original_filename
    @genle.image_type = params[:genle][:image_g].content_type
    @genle.image_binary = params[:genle][:image_g].read
  end

  if @genle.save
    redirect_to genles_path
  else
    rerender :new
  end
  end

  # PATCH/PUT /genres/1
  # PATCH/PUT /genres/1.json
  def update
      @genre = Genre.find(params[:id])
      genle.color_g=params[:genle][:color_g]
      genle.image_g=params[:genle][:image_g]
      genle.image_binary=params[:genle][:image_binary]
      genle.image_type=params[:genle][:image_type]
    ]if params[:genle][:image_g].present?
      @genle.image_g = params[:genle][:image_g].original_filename
      @genle.image_type = params[:genle][:image_g].content_type
      @genle.image_binary = params[:genle][:image_g].read
    end
  
    if @genle.save
      redirect_to genles_path
    else
      rerender :edit
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_params
      params.require(:genre).permit(:color_g, :image_g, :image_binary, :image_type)
    end
    def show_image
      @genle = Genle.find(params[:id])
      send_data @genle.image_g, :filename =>@genle.image_g, :type =>@genle.image_type, :disposition => 'inline'
    end
end
