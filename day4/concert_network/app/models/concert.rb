class Concert < ActiveRecord::Base
	has_many :comments, dependent: :destroy

	def self.sort_by_comments(number=10)
		concerts = self.all.sort { |x,y| y.comments.count <=> x.comments.count }
		concerts = concerts[0..9]
	end
end
