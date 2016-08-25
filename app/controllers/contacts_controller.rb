class ContactsController < ApplicationController
<<<<<<< HEAD

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = " test"
      #flash.now[:error] = nil
      redirect_to root_path
    else
      #flash.now[:error] = 'Contact send message'
      render :new
      redirect_to root_path
    end
  end

=======
  def new
  	@contact = Conctact.new
  end

  def create
@contact = Contact.new(params[:contact])
@contact.request = request
  end
>>>>>>> origin/master
end
