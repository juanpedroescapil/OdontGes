class SugerenciaController < ApplicationController
  before_action :set_sugerencium, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /sugerencia
  # GET /sugerencia.json
  def index
    @sugerencia = current_user.sugerencia
    @sugerencia_toda = Sugerencium.all
    @usuarios = User.all
  end

  # GET /sugerencia/1
  # GET /sugerencia/1.json
  def show
  end

  # GET /sugerencia/new
  def new
    @sugerencia = current_user.sugerencia.new
  end

  # GET /sugerencia/1/edit
  def edit
    @sugerencia = current_user.sugerencia.find(params[:id])
  end

  # POST /sugerencia
  # POST /sugerencia.json
  def create
    @sugerencia = current_user.sugerencia.new(sugerencia_params)

    respond_to do |format|
      if @sugerencia.save
        format.html { redirect_to @sugerencia, notice: 'Sugerencium was successfully created.' }
        format.json { render :show, status: :created, location: @sugerencia }
      else
        format.html { render :new }
        format.json { render json: @sugerencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sugerencia/1
  # PATCH/PUT /sugerencia/1.json
  def update
    respond_to do |format|
      if @sugerencia.update(sugerencium_params)
        format.html { redirect_to @sugerencia, notice: 'Sugerencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @sugerencia }
      else
        format.html { render :edit }
        format.json { render json: @sugerencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sugerencia/1
  # DELETE /sugerencia/1.json
  def destroy
    @sugerencia.destroy
    respond_to do |format|
      format.html { redirect_to sugerencia_url, notice: 'Sugerencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sugerencium
      @sugerencia = Sugerencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sugerencia_params
      params.require(:sugerencium).permit(:fecha, :date, :titulo, :detalle, :user_id)
    end
end