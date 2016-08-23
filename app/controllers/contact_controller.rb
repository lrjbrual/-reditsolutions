class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you, We will come back to you as soon as possible.'
      redirect_to root_path
    else
      flash.now[:error] = 'Not possible to send the message. Please check email.'
      redirect_to root_path
    end
  end
end
