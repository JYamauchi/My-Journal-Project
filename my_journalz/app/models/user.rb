class User < ActiveRecord::Base

	has_one :profile, dependent: :destroy
	has_many :posts, through: :profile
	has_many :videos, through: :posts
	has_many :photos, through: :posts
	
	accepts_nested_attributes_for :profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 

end
