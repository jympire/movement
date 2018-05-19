class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.text :step
      t.belongs_to :movement, foreign_key: true

      t.timestamps
    end
  end
end
