class AddTitleAboutToEvent < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :title, :string
    add_column :events, :about, :text
  end
end
