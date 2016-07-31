class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :url
      t.integer :user_id
      t.string :slug

      t.timestamps null: false
    end
  end
end
