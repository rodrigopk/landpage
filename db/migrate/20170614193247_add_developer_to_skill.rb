class AddDeveloperToSkill < ActiveRecord::Migration[5.0]
  def change
    add_reference :skills, :developer, foreign_key: true
  end
end
