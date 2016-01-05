class SugerenciaController < ApplicationController
  before_action :set_sugerencium, only: [:show, :edit, :update, :destroy]

  # GET /sugerencia
  # GET /sugerencia.json
  def index
    @sugerencia = Sugerencium.all
  end

  # GET /sugerencia/1
  # GET /sugerencia/1.json
  def show
  end

  # GET /sugerencia/new
  def new
    @sugerencium = Sugerencium.new
  end

  # GET /sugerencia/1/edit
  def edit
  end

  # POST /sugerencia
  # POST /sugerencia.json
  def create
    @sugerencium = Sugerencium.new(sugerencium_params)

    respond_to do |format|
      if @sugerencium.save
        format.html { redirect_to @sugerencium, notice: 'Sugerencium was successfully created.' }
        format.json { render :show, status: :created, location: @sugerencium }
      else
        format.html { render :new }
        format.json { render json: @sugerencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sugerencia/1
  # PATCH/PUT /sugerencia/1.json
  def update
    respond_to do |format|
      if @sugerencium.update(sugerencium_params)
        format.html { redirect_to @sugerencium, notice: 'Sugerencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @sugerencium }
      else
        format.html { render :edit }
        format.json { render json: @sugerencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sugerencia/1
  # DELETE /sugerencia/1.json
  def destroy
    @sugerencium.destroy
    respond_to do |format|
      format.html { redirect_to sugerencia_url, notice: 'Sugerencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sugerencium
      @sugerencium = Sugerencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sugerencium_params
      params.require(:sugerencium).permit(:fecha, :titulo, :detalle)
    end
end
