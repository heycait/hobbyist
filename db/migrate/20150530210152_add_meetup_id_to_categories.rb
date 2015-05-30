class AddMeetupIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :meetup_id, :string
  end
end
