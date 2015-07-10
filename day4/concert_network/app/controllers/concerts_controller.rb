class ConcertsController < ApplicationController
	def index
		today = DateTime.current
		
		beginning_of_today = today.at_beginning_of_day
		end_of_today = today.at_end_of_day
		
		@today_concerts = Concert.where("date >= ? AND date < ?", beginning_of_today, end_of_today)
		@today_to_end_month_concerts = Concert.where("date > ? AND date <= ?", today, today.end_of_month.end_of_day)
	end

	def show
		@concert = Concert.find(params[:id])
	end

	def new
		@concert = Concert.new
	end

	def create
		concert = Concert.new concert_params
		if concert.save
			redirect_to concerts_path
		else
			render :new
		end
	end

	private

	def concert_params
		params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
	end
end