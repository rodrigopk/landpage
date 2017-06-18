class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :phone, null: false
      t.string :email, null: false
      t.string :skype_id, null: false
      t.string :linkedin_url
      t.string :github_url
      t.string :twitter
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
