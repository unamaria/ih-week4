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
end