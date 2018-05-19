class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.belongs_to :movement, foreign_key: true

      t.timestamps
    end
  end
end
