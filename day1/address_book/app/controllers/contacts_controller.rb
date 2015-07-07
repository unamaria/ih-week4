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
  def edit
    @contact = Contact.find params[:id]
  end
  def search
    @search = params[:search]
    @contacts_search = Contact.where("name LIKE ?", "#{@search}%")
  end
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.valid?
      @contact.save
      redirect_to :action => 'show', :id => @contact.id, notice: 'Project was successfully created'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :address)
  end
end