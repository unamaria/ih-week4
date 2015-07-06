class ContactsController < ApplicationController
  def index
    @contacts = Contact.order("name ASC")
  end
  def create
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
end