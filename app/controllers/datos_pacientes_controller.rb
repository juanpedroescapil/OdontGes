class DatosPacientesController < ApplicationController
  before_action :set_tarje, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /tarjes
  # GET /tarjes.json
  def index
    @tarjes = current_user.tarjes
  end

  # GET /tarjes/1
  # GET /tarjes/1.json
  def show
  end

  # GET /tarjes/new
  def new
    @tarje = current_user.tarjes.new
  end

  # GET /tarjes/1/edit
  def edit
    @tarje = current_user.tarjes.find(params[:id])
  end

  # POST /tarjes
  # POST /tarjes.json
  def create
    @tarje = current_user.tarjes.new(tarje_params)

    respond_to do |format|
      if @tarje.save
        format.html { redirect_to @tarje, notice: 'Tarje was successfully created.' }
        format.json { render :show, status: :created, location: @tarje }
      else
        format.html { render :new }
        format.json { render json: @tarje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarjes/1
  # PATCH/PUT /tarjes/1.json
  def update
    respond_to do |format|
      if @tarje.update(tarje_params)
        format.html { redirect_to @tarje, notice: 'Tarje was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarje }
      else
        format.html { render :edit }
        format.json { render json: @tarje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarjes/1
  # DELETE /tarjes/1.json
  def destroy
    @tarje.destroy
    respond_to do |format|
      format.html { redirect_to tarjes_url, notice: 'Tarje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarje
      @tarje = Tarje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarje_params
      params.require(:tarje).permit(:nombre, :color, :banco)
    end
end
