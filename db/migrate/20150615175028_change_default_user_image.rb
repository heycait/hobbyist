class ChangeDefaultUserImage < ActiveRecord::Migration
  def change
    change_column_default(:users, :image_url, 'http://project5.seoxpertise.org/wp-content/uploads/2015/03/default_user.png')
  end
end
