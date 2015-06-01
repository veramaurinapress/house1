class SixteensquaregridsController < ApplicationController
  before_action :set_sixteensquaregrid, only: [:show, :edit, :update, :destroy]

  # GET /sixteensquaregrids
  # GET /sixteensquaregrids.json
  def index
    @sixteensquaregrids = Sixteensquaregrid.all
  end

  # GET /sixteensquaregrids/1
  # GET /sixteensquaregrids/1.json
  def show
  end

  # GET /sixteensquaregrids/new
  def new
    @sixteensquaregrid = Sixteensquaregrid.new
  end

  # GET /sixteensquaregrids/1/edit
  def edit
  end

  # POST /sixteensquaregrids
  # POST /sixteensquaregrids.json
  def create
    @sixteensquaregrid = Sixteensquaregrid.new(sixteensquaregrid_params)

    respond_to do |format|
      if @sixteensquaregrid.save
        format.html { redirect_to @sixteensquaregrid, notice: 'Sixteensquaregrid was successfully created.' }
        format.json { render :show, status: :created, location: @sixteensquaregrid }
      else
        format.html { render :new }
        format.json { render json: @sixteensquaregrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sixteensquaregrids/1
  # PATCH/PUT /sixteensquaregrids/1.json
  def update
    respond_to do |format|
      if @sixteensquaregrid.update(sixteensquaregrid_params)
        format.html { redirect_to @sixteensquaregrid, notice: 'Sixteensquaregrid was successfully updated.' }
        format.json { render :show, status: :ok, location: @sixteensquaregrid }
      else
        format.html { render :edit }
        format.json { render json: @sixteensquaregrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sixteensquaregrids/1
  # DELETE /sixteensquaregrids/1.json
  def destroy
    @sixteensquaregrid.destroy
    respond_to do |format|
      format.html { redirect_to sixteensquaregrids_url, notice: 'Sixteensquaregrid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sixteensquaregrid
      @sixteensquaregrid = Sixteensquaregrid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sixteensquaregrid_params
      params.require(:sixteensquaregrid).permit(:text, :picture)
    end
end
