class ConcertsController < ApplicationController
	def index
		beginning_of_today = DateTime.current.at_beginning_of_day
		end_of_today = DateTime.current.at_end_of_day
		@concerts = Concert.where("date >= ? AND date < ?", beginning_of_today, end_of_today)
	end

	def new
		@concert = Concert.new
	end

	def create

	end
end