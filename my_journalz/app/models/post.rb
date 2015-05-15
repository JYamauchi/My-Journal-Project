class Post < ActiveRecord::Base
	belongs_to :profile
	has_many :photos
	has_many :videos

end
