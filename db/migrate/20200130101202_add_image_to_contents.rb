class AddImageToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :image, :string
  end
end
