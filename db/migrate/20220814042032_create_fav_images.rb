class CreateFavImages < ActiveRecord::Migration[7.0]
  def change
    create_table :fav_images do |t|
      t.string :name
      t.timestamps
    end
  end
end
