class CreateOranges < ActiveRecord::Migration[7.0]
  def change
    create_table :oranges do |t|
      t.references :basket, null: false, foreign_key: true
      t.text :variety

      t.timestamps
    end
  end
end
