class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.references :genre, foreign_key: true
      t.string :name
      t.text :main_content
      t.text :sub_content
      t.string :image
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.string :copyright1
      t.string :copyright2
      t.string :copyright3
      t.string :copyright4
      t.string :copyright5
      t.timestamps
    end
  end
end
