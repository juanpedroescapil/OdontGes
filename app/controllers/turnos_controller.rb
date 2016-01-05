class TurnosController < ApplicationController
  before_action :set_compra_tarje, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /compra_tarjes
  # GET /compra_tarjes.json
  def index
    fech1 = DateTime.now.to_date
    fech2 =  Date.strptime("10/15/2013", "%m/%d/%Y")
    @meses = ((fech2.year - fech1.year) * 12) + (fech2.month - fech1.month)
    @compra_tarjes= current_user.compra_tarjes
    @compra_tarje = current_user.compra_tarjes
    @tarjes = current_user.tarjes
    @categoria = current_user.categoria
  end

  # GET /compra_tarjes/1
  # GET /compra_tarjes/1.json
  def show
  end

  # GET /compra_tarjes/new
  def new
    @compra_tarje = current_user.compra_tarjes.new
    @tarjes = current_user.tarjes
    @categoria = current_user.categoria
  end

  # GET /compra_tarjes/1/edit
  def edit
    @compra_tarje = current_user.compra_tarjes.find(params[:id])
    @tarjes = current_user.tarjes
    @categoria = current_user.categoria
  end

  # POST /compra_tarjes
  # POST /compra_tarjes.json
  def create
    @compra_tarje = current_user.compra_tarjes.new(compra_tarje_params)
    @tarjes = current_user.tarjes
    @categoria = current_user.categoria
    respond_to do |format|
      if @compra_tarje.save
        format.html { redirect_to @compra_tarje, notice: 'Compra tarje was successfully created.' }
        format.json { render :show, status: :created, location: @compra_tarje }
      else
        format.html { render :new }
        format.json { render json: @compra_tarje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_tarjes/1
  # PATCH/PUT /compra_tarjes/1.json
  def update
    respond_to do |format|
      @tarjes = current_user.tarjes
      if @compra_tarje.update(compra_tarje_params)
        format.html { redirect_to @compra_tarje, notice: 'Compra tarje was successfully updated.' }
        format.json { render :show, status: :ok, location: @compra_tarje }
      else
        format.html { render :edit }
        format.json { render json: @compra_tarje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_tarjes/1
  # DELETE /compra_tarjes/1.json
  def destroy
    @compra_tarje.destroy
    respond_to do |format|
      format.html { redirect_to compra_tarjes_url, notice: 'Compra tarje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_tarje
      @compra_tarje = CompraTarje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_tarje_params
      params.require(:compra_tarje).permit(:lugar,:date_compra, :date, :monto, :cantcuot, :detalle, :tarje_id, :categorium_id)
    end
end
