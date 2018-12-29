class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  before_action :verify_id!, only: [:edit, :update]

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
  end

  # POST /empresas
  # POST /empresas.json
  def create
    #@empresa = Empresa.new(empresa_params)
    user ||= current_user
    user.build_empresa(empresa_params)

    respond_to do |format|
      if user.empresa.save
        format.html { redirect_to user.empresa, notice: 'Empresa creada.' }
        format.json { render :show, status: :created, location: user.empresa }
      else
        format.html { render :new }
        format.json { render json: user.empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Empresa actualizada.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_url, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    def verify_id!
      authenticate_user!
      unless (@empresa.try(:user) == current_user || current_user.role == "admin")
        redirect_to root_path, alert: "No eres el propietario de esta empresa y no puedes editarla."
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:nombre, :historia, :resumen, :direccion, :web, :telefono, :email, :video, :horario, :lon, :lat, :user_id_id, :logo, images: [])
    end
end
