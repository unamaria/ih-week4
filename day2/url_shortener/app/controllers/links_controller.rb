class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    @link = Link.create(original_url: params[:original_url])
    redirect_to links_path
  end
end