class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :name
      t.string :description
      t.string :image_url, default: "/assets/gobee.png"
      t.belongs_to :category, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
