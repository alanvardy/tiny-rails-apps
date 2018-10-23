# frozen_string_literal: true

class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :Posts, :user_id, :integer
  end
end
