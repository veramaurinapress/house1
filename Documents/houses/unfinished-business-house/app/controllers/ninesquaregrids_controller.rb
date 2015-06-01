class NinesquaregridsController < ApplicationController
  before_action :set_ninesquaregrid, only: [:show, :edit, :update, :destroy]

  # GET /ninesquaregrids
  # GET /ninesquaregrids.json
  def index
    @ninesquaregrids = Ninesquaregrid.all
  end

  # GET /ninesquaregrids/1
  # GET /ninesquaregrids/1.json
  def show
  end

  # GET /ninesquaregrids/new
  def new
    @ninesquaregrid = Ninesquaregrid.new
  end

  # GET /ninesquaregrids/1/edit
  def edit
  end

  # POST /ninesquaregrids
  # POST /ninesquaregrids.json
  def create
    @ninesquaregrid = Ninesquaregrid.new(ninesquaregrid_params)

    respond_to do |format|
      if @ninesquaregrid.save
        format.html { redirect_to @ninesquaregrid, notice: 'Ninesquaregrid was successfully created.' }
        format.json { render :show, status: :created, location: @ninesquaregrid }
      else
        format.html { render :new }
        format.json { render json: @ninesquaregrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ninesquaregrids/1
  # PATCH/PUT /ninesquaregrids/1.json
  def update
    respond_to do |format|
      if @ninesquaregrid.update(ninesquaregrid_params)
        format.html { redirect_to @ninesquaregrid, notice: 'Ninesquaregrid was successfully updated.' }
        format.json { render :show, status: :ok, location: @ninesquaregrid }
      else
        format.html { render :edit }
        format.json { render json: @ninesquaregrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ninesquaregrids/1
  # DELETE /ninesquaregrids/1.json
  def destroy
    @ninesquaregrid.destroy
    respond_to do |format|
      format.html { redirect_to ninesquaregrids_url, notice: 'Ninesquaregrid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ninesquaregrid
      @ninesquaregrid = Ninesquaregrid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ninesquaregrid_params
      params.require(:ninesquaregrid).permit(:text, :picture)
    end
end
