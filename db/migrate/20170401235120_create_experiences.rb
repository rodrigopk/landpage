class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :title, null: false
      t.date :date_started, null: false
      t.date :date_ended
      t.boolean :current, default: false
      t.string :description
      t.string :company, null: false
      t.string :company_url

      t.timestamps
    end
  end
end
