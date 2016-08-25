class ContactsController < ApplicationController
  def new
  	@contact = Conctact.new
  end

  def create
@contact = Contact.new(params[:contact])
@contact.request = request
  end
end
