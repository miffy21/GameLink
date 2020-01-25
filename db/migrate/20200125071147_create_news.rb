class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.references :genre, foreign_key: true
      t.string :name
      t.text :main_content
      t.string :image_id

      t.timestamps
    end
  end
end
