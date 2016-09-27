class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    set_meta_tags site:"NetStarted",   
                  title: "contact netstated",
                  description: "Send us an email our team will come back to you within 24h",
                  keywords: %w[startup tech_startup start_my_company ruby rubyonrails create_my_startup website e_commerce website web_agency redesign_my_website],
                  image_src: "http://netstarted.com/images/createyourtechstartup.jpg",
                  icon: '/favicon.png', type: 'image/png'
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = nil
    else
      flash.now[:notice] = 'Cannot send message'
      render :new
    end
  end
end
