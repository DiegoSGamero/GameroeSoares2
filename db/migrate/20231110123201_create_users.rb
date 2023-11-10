class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :fantasy_name
      t.string :CPF
      t.string :RG
      t.string :CNPJ
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :role
      t.string :password

      t.timestamps
    end
  end
end
