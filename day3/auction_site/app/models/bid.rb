class Bid < ActiveRecord::Base
	belongs_to :product
	belongs_to :user

	validate :greater_than_min_bid
	#validate :greater_than_current_max_bid

	def greater_than_min_bid
		if amount <= product.min_bid
      errors.add(:amount, "can't be smaller than minimum bid")
    end
	end

	def greater_than_current_max_bid
		product = Product.find(product_id)
		current_max_bid = product.bids.max_by { |bid| bid.amount }
		current_max_bid_amount = current_max_bid.amount
		if amount <= current_max_bid_amount
			errors.add(:amount, "can't be smaller than current maxim bid")
		end
	end

	def not_from_product_owner
		owner_id = product_id.user_id

	end
end
