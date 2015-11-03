class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.string :description
      t.string :comment
      t.integer :like

      t.timestamps null: false
    end
  end
end
