class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    @link = Link.create(original_url: params[:original_url])
    redirect_to links_path
  end

  def short_to_original
    redirect_to Link.find_by(short_url: params[:shortlink]).original_url
  end
end