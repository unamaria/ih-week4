class Link < ActiveRecord::Base

  before_validation :shorten_url

  def self.url_find(shorturl)
    find_by(short_url: shorturl).original_url
  end

  def shorten_url
    self.short_url = random_string
  end

  def random_string(length=3)
   chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
   password = ''
   length.times { password << chars[rand(chars.size)] }
   password
  end
end
