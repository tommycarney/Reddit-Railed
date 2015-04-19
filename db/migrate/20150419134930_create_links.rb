class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|

      t.timestamps null: false
      t.integer :user_id
      t.string :url
    end
  end
end
