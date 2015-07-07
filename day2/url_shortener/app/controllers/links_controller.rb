class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    original_url = check_http(params[:original_url])
    if exists?(original_url)
      @link = Link.find_by(original_url: original_url)
    else
      @link = Link.create(original_url: original_url)
    end
    redirect_to links_path, notice: 'Short URL: ' + @link.short_url
  end

  def short_to_original
    redirect_to Link.find_by(short_url: params[:shortlink]).original_url
  end

  private

  def check_http(original_url)
    if !original_url.start_with?("http://")
      original_url = original_url.prepend("http://")
    end

    original_url
  end

  def exists?(original_url)
    Link.find_by(original_url: original_url)
  end
end