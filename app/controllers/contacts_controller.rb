class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      #flash[:notice] = " test"
      flash.now[:notice] = nil
      redirect_to contacts_create
    else
      flash.now[:error] = 'cannot send message'
      render :new
    end
  end
end
