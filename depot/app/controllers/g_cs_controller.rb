class GCsController < ApplicationController
  before_action :set_gc, only: [:show, :edit, :update, :destroy]

  # GET /gcs
  # GET /gcs.json
  def index
    @gcs = Gc.all
  end

  # GET /gcs/1
  # GET /gcs/1.json
  def show
  end

  # GET /gcs/new
  def new
    @gc = Gc.new
  end

  # GET /gcs/1/edit
  def edit
  end

  # POST /gcs
  # POST /gcs.json
  def create
    @gc = Gc.new(gc_params)

    respond_to do |format|
      if @gc.save
        format.html { redirect_to @gc, notice: 'Gc was successfully created.' }
        format.json { render :show, status: :created, location: @gc }
      else
        format.html { render :new }
        format.json { render json: @gc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gcs/1
  # PATCH/PUT /gcs/1.json
  def update
    respond_to do |format|
      if @gc.update(gc_params)
        format.html { redirect_to @gc, notice: 'Gc was successfully updated.' }
        format.json { render :show, status: :ok, location: @gc }
      else
        format.html { render :edit }
        format.json { render json: @gc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gcs/1
  # DELETE /gcs/1.json
  def destroy
    @gc.destroy
    respond_to do |format|
      format.html { redirect_to gcs_url, notice: 'Gc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gc
      @gc = Gc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gc_params
      params[:gc]
    end
end
