# frozen_string_literal: true

class AddCascadeToLike < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :likes, :users
    add_foreign_key :likes, :users, on_delete: :cascade
    remove_foreign_key :likes, :blogs
    add_foreign_key :likes, :blogs, on_delete: :cascade
  end
end
