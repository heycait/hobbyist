class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :answers
  has_many :questions
  has_and_belongs_to_many :hobbies

  validates :username, :email, :image_url, presence: true
  validates_uniqueness_of :email

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      puts '*' * 50
      p auth
      puts '*' * 50
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.base64
      user.image_url = auth.info.image
      user.save!
    end
  end


end
