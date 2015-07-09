class Bid < ActiveRecord::Base
	belongs_to :product

	# validate :greater_than_min_bid

	# def greater_than_min_bid
	# 	if amount < Product.find(product_id).min_bid
 #      errors.add(:amount, "can't be smaller than minimum bid")
 #    end
	# end
end
