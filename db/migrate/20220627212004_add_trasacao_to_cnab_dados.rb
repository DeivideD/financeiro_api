class AddTrasacaoToCnabDados < ActiveRecord::Migration[6.1]
  def change
    add_reference :cnab_dados, :transacao, null: false, foreign_key: true
  end
end
