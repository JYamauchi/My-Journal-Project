class Photo < ActiveRecord::Base
	belongs_to :post
	# belongs_to :user
	# belongs_to :singular_word
	# has_many :plurarl_word
	# validates :flickr_id, :presence => true
end
