class BidsController < ApplicationController
	def new
		@bid = Bid.new
	end

	def create
		@bid = Bid.new

		if @bid.valid? && @bid.present?
			@bid.product_id
			@bid.user_id
			@bid.save
		else
			render 'product/params[:id]'
		end
	end

	private

	def bid_params
		params.require(:bid).permit(:amount, :email)
	end
end