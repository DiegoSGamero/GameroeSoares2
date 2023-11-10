class CreateJoinTableUsersProperties < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :properties do |t|
      # t.index [:user_id, :property_id]
      # t.index [:property_id, :user_id]
    end
  end
end
