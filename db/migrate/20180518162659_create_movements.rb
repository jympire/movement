class CreateMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :movements do |t|
      t.integer :user_id
      t.string :text
      t.text :description

      t.timestamps
    end
  end
end
