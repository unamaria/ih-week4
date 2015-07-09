class ProductsController < ApplicationController
	def index

	end

	def show

	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new product_params

		if @product.valid? && @product.present?
			@product.save
			redirect_to product_path(@product), notice: "Product sucessfully added"
		else
			render :new
		end
	end

	def destroy

	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :deadline, :user_id)
	end
end