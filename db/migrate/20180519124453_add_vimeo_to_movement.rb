class AddVimeoToMovement < ActiveRecord::Migration[5.0]
  def change
    add_column :movements, :vimeo, :string
  end
end
