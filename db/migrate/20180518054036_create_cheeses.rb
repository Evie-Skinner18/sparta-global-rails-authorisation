class CreateCheeses < ActiveRecord::Migration[5.2]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.string :country
      t.integer :strength
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
