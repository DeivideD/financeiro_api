require "test_helper"

class TransacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transacao = transacaos(:one)
  end

  test "should get index" do
    get transacaos_url, as: :json
    assert_response :success
  end

  test "should create transacao" do
    assert_difference('Transacao.count') do
      post transacaos_url, params: { transacao: { descricao: @transacao.descricao, natureza: @transacao.natureza, sinal: @transacao.sinal, tipo: @transacao.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show transacao" do
    get transacao_url(@transacao), as: :json
    assert_response :success
  end

  test "should update transacao" do
    patch transacao_url(@transacao), params: { transacao: { descricao: @transacao.descricao, natureza: @transacao.natureza, sinal: @transacao.sinal, tipo: @transacao.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy transacao" do
    assert_difference('Transacao.count', -1) do
      delete transacao_url(@transacao), as: :json
    end

    assert_response 204
  end
end
