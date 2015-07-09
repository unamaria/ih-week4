class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@user = User.find(params[:user_id])
		@product = Product.new
	end

	def create
		@user = User.find(params[:user_id])
		@product = Product.new product_params

		# if @product.valid? && @product.present?
			@product.save
			redirect_to user_path(@user), notice: "Product sucessfully added"
		# else
			# render :new
		# end
	end

	def destroy

	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :deadline, :user_id)
	end
end