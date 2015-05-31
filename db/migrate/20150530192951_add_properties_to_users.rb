class AddPropertiesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :username
      t.string :image_url#, default: "http://www.genengnews.com/app_themes/genconnect/images/default_profile.jpg"
    end
  end
end
