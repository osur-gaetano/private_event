class AddAuthorIdToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :author_id, :integer
  end
end
