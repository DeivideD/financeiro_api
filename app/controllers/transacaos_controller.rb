class TransacaosController < ApplicationController
  before_action :set_transacao, only: [:show, :update, :destroy]

  # GET /transacaos
  def index
    @transacaos = Transacao.all

    render json: @transacaos
  end

  # GET /transacaos/1
  def show
    render json: @transacao
  end

  def create
    @transacao = Transacao.new(transacao_params)

    if @transacao.save
      render json: @transacao, status: :created, location: @transacao
    else
      render json: @transacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transacaos/1
  def update
    if @transacao.update(transacao_params)
      render json: @transacao
    else
      render json: @transacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transacaos/1
  def destroy
    @transacao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transacao
      @transacao = Transacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transacao_params
      params.require(:transacao).permit(:tipo, :descricao, :natureza, :sinal)
    end
end
