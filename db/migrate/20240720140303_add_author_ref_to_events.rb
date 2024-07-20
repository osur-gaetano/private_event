class AddAuthorRefToEvents < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :events, :users, column: :creator_id, primary_key: :id
  end
end
