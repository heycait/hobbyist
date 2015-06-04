class AddPropertiesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :username
      t.string :image_url, default: "/assets/jordan.jpg"
    end
  end
end
