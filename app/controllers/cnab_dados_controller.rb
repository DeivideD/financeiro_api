class CnabDadosController < ApplicationController
  before_action :set_cnab_dado, only: [:show, :update, :destroy]

  # GET /cnab_dados
  def index
    @cnab_dados = CnabDado.all

    render json: @cnab_dados
  end

  # GET /cnab_dados/1
  def show
    render json: @cnab_dado
  end

  # POST /cnab_dados
  def create
   
   
    # @cnab_dado = CnabDado.new(cnab_dado_params)

    # if @cnab_dado.save
    #   render json: @cnab_dado, status: :created, location: @cnab_dado
    # else
    #   render json: @cnab_dado.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /cnab_dados/1
  def update
    if @cnab_dado.update(cnab_dado_params)
      render json: @cnab_dado
    else
      render json: @cnab_dado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cnab_dados/1
  def destroy
    @cnab_dado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnab_dado
      @cnab_dado = CnabDado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cnab_dado_params
      params.require(:cnab_dado).permit(:data, :valor, :cpf, :cartao, :hora, :dono_loja, :nome_loja)
    end
end
