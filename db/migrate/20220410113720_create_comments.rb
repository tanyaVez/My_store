class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :commentable_id
      t.integer :commentable_type

      t.timestamps null: false
    end
  end
end
