class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :content
      t.string :user_id
      t.string :image_url, default:""
      t.timestamps null: false
    end
  end
end
