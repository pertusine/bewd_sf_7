class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_url
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
