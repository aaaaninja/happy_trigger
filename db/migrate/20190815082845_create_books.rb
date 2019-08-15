class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.belongs_to :author, foreign_key: true
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
