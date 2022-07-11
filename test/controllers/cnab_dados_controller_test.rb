require "test_helper"

class CnabDadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cnab_dado = cnab_dados(:one)
  end

  test "should get index" do
    get cnab_dados_url, as: :json
    assert_response :success
  end

  test "should create cnab_dado" do
    assert_difference('CnabDado.count') do
      post cnab_dados_url, params: { cnab_dado: { cartao: @cnab_dado.cartao, cpf: @cnab_dado.cpf, data: @cnab_dado.data, dono_loja: @cnab_dado.dono_loja, hora: @cnab_dado.hora, nome_loja: @cnab_dado.nome_loja, valor: @cnab_dado.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show cnab_dado" do
    get cnab_dado_url(@cnab_dado), as: :json
    assert_response :success
  end

  test "should update cnab_dado" do
    patch cnab_dado_url(@cnab_dado), params: { cnab_dado: { cartao: @cnab_dado.cartao, cpf: @cnab_dado.cpf, data: @cnab_dado.data, dono_loja: @cnab_dado.dono_loja, hora: @cnab_dado.hora, nome_loja: @cnab_dado.nome_loja, valor: @cnab_dado.valor } }, as: :json
    assert_response 200
  end

  test "should destroy cnab_dado" do
    assert_difference('CnabDado.count', -1) do
      delete cnab_dado_url(@cnab_dado), as: :json
    end

    assert_response 204
  end
end
