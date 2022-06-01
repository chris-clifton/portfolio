# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :login,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.integer :admin, null: false, default: false

      t.timestamps null: false
    end

    add_index :users, :login, unique: true
  end
end
