class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.references :genre, foreign_key: true
      t.string :name
      t.text :main_content
      t.text :sub_content
      t.string :image_id

      t.timestamps
    end
  end
end
