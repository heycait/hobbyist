class Hobby < ActiveRecord::Base
  # require 'imgur'
  # before_save :imgur_link
  belongs_to :category
  has_many :questions
  has_and_belongs_to_many :users

  validates_presence_of :name, :description, :image_url, :category_id
  validates_uniqueness_of :name


  # private
  # def imgur_link
  #   if self.image_url != 'http://ccdance.org/wp-content/uploads/2011/07/replace-me-960x540.jpg'
  #     imgur_client = Imgur.new('891321eba378312')
  #     image_path = self.image_url.tempfile.path
  #     image = Imgur::LocalImage.new(image_path)
  #     imgur_url = imgur_client.upload(image).link
  #     self.image_url = imgur_url
  #   end
  # end
end
