# frozen_string_literal: true

class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :number, :integer
    add_column :users, :password, :string
    add_column :users, :address, :string
  end
end
