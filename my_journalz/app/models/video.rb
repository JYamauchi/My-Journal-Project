class Video < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	# validates :flickr_id, :presence => true
end
