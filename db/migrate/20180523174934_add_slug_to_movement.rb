class AddSlugToMovement < ActiveRecord::Migration[5.0]
  def change
    add_column :movements, :slug, :string
    add_index :movements, :slug, unique: true
  end
end
