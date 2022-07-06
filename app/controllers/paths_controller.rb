class PathsController < ApplicationController
  before_action :get_sprite
  before_action :set_path, only: %i[ show edit update destroy ]

  # GET /paths or /paths.json
  def index
    @paths = @sprite.paths
  end

  # GET /paths/1 or /paths/1.json
  def show
  end

  # GET /paths/new
  def new
    @path = @sprite.paths.build
  end

  # GET /paths/1/edit
  def edit
  end

  # POST /paths or /paths.json
  def create
    @path = @sprite.paths.build(path_params)

    respond_to do |format|
      if @path.save
        format.html { redirect_to sprite_paths_path(@sprite), notice: "Path was successfully created." }
        format.json { render :show, status: :created, location: @path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paths/1 or /paths/1.json
  def update
    respond_to do |format|
      if @path.update(path_params)
        format.html { redirect_to sprite_path_path(@path), notice: "Path was successfully updated." }
        format.json { render :show, status: :ok, location: @path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paths/1 or /paths/1.json
  def destroy
    @path.destroy

    respond_to do |format|
      format.html { redirect_to sprite_paths_path(@sprite), notice: "Path was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def get_sprite
      @sprite = Sprite.find(params[:sprite_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_path
      @path = @sprite.paths.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def path_params
      params.require(:path).permit(:id_element, :class_element, :d_element, :sprite_id)
    end
end
