class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :post, null: false, foreign_key: true
      t.string :ip_address

      t.timestamps
    end

    add_index :likes, :ip_address
  end
end
