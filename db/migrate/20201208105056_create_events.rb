class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.string :title
      t.string :photo
      t.text :description
      t.string :location
      t.string :category
      t.date :start_date
      t.date :end_date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity

      t.timestamps
    end
  end
end
