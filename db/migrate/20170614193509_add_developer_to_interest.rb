class AddDeveloperToInterest < ActiveRecord::Migration[5.0]
  def change
    add_reference :interests, :developer, foreign_key: true
  end
end
