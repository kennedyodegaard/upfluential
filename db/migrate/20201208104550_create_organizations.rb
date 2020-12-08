class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :website
      t.string :description
      t.string :location
      t.string :logo

      t.timestamps
    end
  end
end
