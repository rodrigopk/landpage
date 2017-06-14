class AddUserToExperience < ActiveRecord::Migration[5.0]
  def change
    add_reference :experiences, :developer, foreign_key: true
  end
end
