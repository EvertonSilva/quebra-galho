class FerramentasController < ApplicationController
  before_action :set_ferramenta, only: [:show, :edit, :update, :destroy]

  # GET /ferramentas
  # GET /ferramentas.json
  def index
    @ferramentas = Ferramenta.all
  end

  # GET /ferramentas/1
  # GET /ferramentas/1.json
  def show
  end

  # GET /ferramentas/new
  def new
    @ferramenta = Ferramenta.new
  end

  # GET /ferramentas/1/edit
  def edit
  end

  # POST /ferramentas
  # POST /ferramentas.json
  def create
    @ferramenta = Ferramenta.new(ferramenta_params)
    @ferramenta.usuario_id = 1
    respond_to do |format|
      if @ferramenta.save
        format.html { redirect_to @ferramenta, notice: 'Ferramenta was successfully created.' }
        format.json { render :show, status: :created, location: @ferramenta }
      else
        format.html { render :new }
        format.json { render json: @ferramenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ferramentas/1
  # PATCH/PUT /ferramentas/1.json
  def update
    respond_to do |format|
      if @ferramenta.update(ferramenta_params)
        format.html { redirect_to @ferramenta, notice: 'Ferramenta was successfully updated.' }
        format.json { render :show, status: :ok, location: @ferramenta }
      else
        format.html { render :edit }
        format.json { render json: @ferramenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ferramentas/1
  # DELETE /ferramentas/1.json
  def destroy
    @ferramenta.destroy
    respond_to do |format|
      format.html { redirect_to ferramentas_url, notice: 'Ferramenta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ferramenta
      @ferramenta = Ferramenta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ferramenta_params
      params.require(:ferramenta).permit(:nome, :descricao, :disponibilidade, :categoria_id, :modelo, :marca, :tempo_de_uso)
    end
end
