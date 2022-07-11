class CreateTransacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :transacaos do |t|
      t.integer :tipo
      t.string :descricao
      t.string :natureza
      t.string :sinal

      t.timestamps
    end
  end
end
