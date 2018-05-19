class AddYoutubeToMovement < ActiveRecord::Migration[5.0]
  def change
    add_column :movements, :youtube_id, :string
  end
end
