class Link < ActiveRecord::Base

  before_validation :shorten_url

  def self.url_find(shorturl)
    find_by(short_url: shorturl).original_url
  end

  def shorten_url
    self.short_url = "dsjfkd"
  end
end
