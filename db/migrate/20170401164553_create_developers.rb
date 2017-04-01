class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.string :name, null: false
      t.date :birthdate, null: false
      t.string :location
      t.string :title, null: false
      t.attachment :picture
      t.string :pitch

      t.timestamps
    end
  end
end
