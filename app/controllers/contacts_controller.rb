class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def contact
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      #flash[:notice] = " test"
      flash.now[:error] = nil
      # redirect_to contacts_create_path
    else
      flash.now[:error] = 'cannot send message'
      render :new
    end
  end
end
