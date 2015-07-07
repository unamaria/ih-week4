class Contact < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_number, format: { with: /[0-9]+\z/,
    message: "only allows numbers" }
    validates :email, format: { with: /([a-z\d_-]+)@([a-z\d_-]+)\.[a-z]{2,4}/,
    message: "please use a valid email" }
end
