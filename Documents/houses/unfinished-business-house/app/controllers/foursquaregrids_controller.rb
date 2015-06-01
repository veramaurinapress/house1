class FoursquaregridsController < ApplicationController
  before_action :set_foursquaregrid, only: [:show, :edit, :update, :destroy]

  # GET /foursquaregrids
  # GET /foursquaregrids.json
  def index
    @foursquaregrids = Foursquaregrid.all
  end

  # GET /foursquaregrids/1
  # GET /foursquaregrids/1.json
  def show
  end

  # GET /foursquaregrids/new
  def new
    @foursquaregrid = Foursquaregrid.new
  end

  # GET /foursquaregrids/1/edit
  def edit
  end

  # POST /foursquaregrids
  # POST /foursquaregrids.json
  def create
    @foursquaregrid = Foursquaregrid.new(foursquaregrid_params)

    respond_to do |format|
      if @foursquaregrid.save
        format.html { redirect_to @foursquaregrid, notice: 'Foursquaregrid was successfully created.' }
        format.json { render :show, status: :created, location: @foursquaregrid }
      else
        format.html { render :new }
        format.json { render json: @foursquaregrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foursquaregrids/1
  # PATCH/PUT /foursquaregrids/1.json
  def update
    respond_to do |format|
      if @foursquaregrid.update(foursquaregrid_params)
        format.html { redirect_to @foursquaregrid, notice: 'Foursquaregrid was successfully updated.' }
        format.json { render :show, status: :ok, location: @foursquaregrid }
      else
        format.html { render :edit }
        format.json { render json: @foursquaregrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foursquaregrids/1
  # DELETE /foursquaregrids/1.json
  def destroy
    @foursquaregrid.destroy
    respond_to do |format|
      format.html { redirect_to foursquaregrids_url, notice: 'Foursquaregrid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foursquaregrid
      @foursquaregrid = Foursquaregrid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foursquaregrid_params
      params.require(:foursquaregrid).permit(:text, :picture)
    end
end
