class ObraSocialController < ApplicationController
  before_action :set_obra_social, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /obra_social
  # GET /obra_social.json
  def index
    @obra_social= ObraSocial.all
  end

  # GET /obra_social/1
  # GET /obra_social/1.json
  def show
  end

  # GET /obra_social/new
  def new
    @obra_social = current_user.obra_social.new    
  end

  # GET /obra_social/1/edit
  def edit
    @obra_social = current_user.obra_social.find(params[:id])
  end

  # POST /obra_social
  # POST /obra_social.json
  def create
    @obra_social = current_user.obra_social.new(obra_social_params)
    respond_to do |format|
      if @obra_social.save
        format.html { redirect_to @obra_social, notice: 'ObraSocial tarje was successfully created.' }
        format.json { render :show, status: :created, location: @obra_social }
      else
        format.html { render :new }
        format.json { render json: @obra_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obra_social/1
  # PATCH/PUT /obra_social/1.json
  def update
    respond_to do |format|
      @obra_social = current_user.obra_social
      if @obra_social.update(obra_social_params)
        format.html { redirect_to @obra_social, notice: 'Obra Social was successfully updated.' }
        format.json { render :show, status: :ok, location: @obra_social }
      else
        format.html { render :edit }
        format.json { render json: @obra_social.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obra_social/1
  # DELETE /obra_social/1.json
  def destroy
    @obra_social.destroy
    respond_to do |format|
      format.html { redirect_to obra_social_url, notice: 'Obra_Social was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_tarje
      @obra_social = ObraSocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obra_social_params
      params.require(:obra_social).permit(:name, :user_id)
    end
end
