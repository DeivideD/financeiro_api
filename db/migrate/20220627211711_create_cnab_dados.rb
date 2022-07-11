class CreateCnabDados < ActiveRecord::Migration[6.1]
  def change
    create_table :cnab_dados do |t|
      t.date :data
      t.decimal :valor, precision: 20, scale: 2
      t.string :cpf
      t.string :cartao
      t.string :hora
      t.string :dono_loja
      t.string :nome_loja

      t.timestamps
    end
  end
end
