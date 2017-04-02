class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :title, null: false
      t.attachment :image

      t.timestamps
    end
  end
end
