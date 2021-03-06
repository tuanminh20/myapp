# frozen_string_literal: true

class DropActiveAdminComments < ActiveRecord::Migration[6.1]
  def change
    drop_table :active_admin_comments do |t|
      t.string :namespace
      t.text :body
      t.string :resource_type
      t.bigint :resource_id
      t.string :author_type
      t.bigint :author_id
      t.datetime :created_at, precision: 6, null: false
      t.datetime :updated_at, precision: 6, null: false
    end
  end
end
