class User < ActiveRecord::Base
	has_many :products
	has_many :bids

	validates :email, presence: true, uniqueness: true
end
