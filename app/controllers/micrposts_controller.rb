class MicrpostsController < ApplicationController
  before_action :set_micrpost, only: %i[ show edit update destroy ]

  # GET /micrposts or /micrposts.json
  def index
    @micrposts = Micrpost.all
  end

  # GET /micrposts/1 or /micrposts/1.json
  def show
  end

  # GET /micrposts/new
  def new
    @micrpost = Micrpost.new
  end

  # GET /micrposts/1/edit
  def edit
  end

  # POST /micrposts or /micrposts.json
  def create
    @micrpost = Micrpost.new(micrpost_params)

    respond_to do |format|
      if @micrpost.save
        format.html { redirect_to micrpost_url(@micrpost), notice: "Micrpost was successfully created." }
        format.json { render :show, status: :created, location: @micrpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @micrpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micrposts/1 or /micrposts/1.json
  def update
    respond_to do |format|
      if @micrpost.update(micrpost_params)
        format.html { redirect_to micrpost_url(@micrpost), notice: "Micrpost was successfully updated." }
        format.json { render :show, status: :ok, location: @micrpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @micrpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micrposts/1 or /micrposts/1.json
  def destroy
    @micrpost.destroy!

    respond_to do |format|
      format.html { redirect_to micrposts_url, notice: "Micrpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micrpost
      @micrpost = Micrpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def micrpost_params
      params.require(:micrpost).permit(:content, :user_id)
    end
end
