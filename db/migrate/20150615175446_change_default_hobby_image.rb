class ChangeDefaultHobbyImage < ActiveRecord::Migration
  def change
    change_column_default(:hobbies, :image_url, '/assets/default_hobby.png')
  end
end
