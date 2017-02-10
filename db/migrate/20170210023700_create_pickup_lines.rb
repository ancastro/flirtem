class CreatePickupLines < ActiveRecord::Migration
  def change
    create_table :pickup_lines do |t|
      t.text :text
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
