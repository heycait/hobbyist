class AddCreatorIdToHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :creator_id, :integer
  end
end
