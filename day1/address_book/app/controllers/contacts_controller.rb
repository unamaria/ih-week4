class ContactsController < ApplicationController
  def index
    @contacts = Contact.order("name ASC")
  end
  def new
    @contact = Contact.new
  end
  def show
    @contact = Contact.find params[:id]
  end
  def search
    @search = params[:search]
    @contacts_search = Contact.where("name LIKE ?", "#{@search}%")
  end
  def create
    # Contact.create!(name: params[:name], address: params[:address], phone_number: params[:phone_number], email: params[:email])
    contact = Contact.create(name: params[:contact][:name], address: params[:contact][:address], phone_number: params[:contact][:phone_number], email: params[:contact][:email])
    if contact.present?
      redirect_to :action => :index
    else
      render :new
    end
  end
end