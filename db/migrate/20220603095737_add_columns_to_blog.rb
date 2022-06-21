# frozen_string_literal: true

class AddColumnsToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :body, :text
  end
end
