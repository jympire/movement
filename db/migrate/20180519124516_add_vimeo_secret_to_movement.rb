class AddVimeoSecretToMovement < ActiveRecord::Migration[5.0]
  def change
    add_column :movements, :vimeo_secret, :string
  end
end
