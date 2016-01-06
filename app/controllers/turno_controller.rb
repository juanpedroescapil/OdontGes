class TurnoController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /pacientes
  # GET /pacientes.json
  def index
    @turnos = Paciente.all
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @turno = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @turno = Paciente.new(turno_params)

    respond_to do |format|
      if @turno.save
        format.html { redirect_to @turno, notice: 'Turno was successfully created.' }
        format.json { render :show, status: :created, location: @turno }
      else
        format.html { render :new }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @turno.update(paciente_params)
        format.html { redirect_to @turno, notice: 'Paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @turno }
      else
        format.html { render :edit }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @turno.destroy
    respond_to do |format|
      format.html { redirect_to turnos_url, notice: 'Turno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turno
      @turno = Turno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turno_params
      params.require(:turno).permit(:id_paciente, :id_usuario, :hora, :dia)
    end
end
