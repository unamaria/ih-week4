class BidsController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		user_id = product.user_id
		@bid = Bid.new amount: params[:amount], user_id: user_id, product_id: product.id

		if @bid.valid? && @bid.present?
			@bid.save
			redirect_to product_path(product)
		else
			render 'product/params[:id]'
		end
	end
end