class HobbiesUsers < ActiveRecord::Migration
  def change
    create_table :hobbies_users, :id => false do |t|
      t.references :hobby, :null => false
      t.references :user, :null => false
      t.timestamps null: false
    end
  end
end
