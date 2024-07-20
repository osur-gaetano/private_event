class RenameAuthorIdToCreatorId < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :author_id, :creator_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
