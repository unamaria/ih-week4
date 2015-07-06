class ContactsController < ApplicationController
  def index
    @contacts = Contact.order("name ASC")
  end
  def destroy
  end
  def show
    @contact = Contact.find params[:id]
  end
  def search
    @search = params[:search]
    @contacts_search = Contact.where("name LIKE ?", "#{@search}%")
  end
  def create
    Contact.create!(name: params[:name], address: params[:address], phone_number: params[:phone_number], email: params[:email])
    redirect_to :action => :index
  end
end