class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.date :start_date
      t.date :end_date
      t.boolean :graduated
      t.string :title
      t.string :field
      t.string :institution_url      
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
