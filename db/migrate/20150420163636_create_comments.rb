class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.timestamps null: false
    	t.text :message
    	t.integer :user_id
    	t.integer :link_id
    end
  end
end
