class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.text :owners
      t.integer :size
      t.string :limit_type

      t.timestamps
    end
  end
end
