# frozen_string_literal: true

class AddCascadeToTables < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :blogs, :users
    add_foreign_key :blogs, :users, on_delete: :cascade
  end
end
