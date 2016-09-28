class FormsController < ApplicationController

  def new
    set_meta_tags site:"NetStarted",
                  title: "contact netstated",
                  description: "Send us an email our team will come back to you within 24h",
                  keywords: %w[startup tech_startup start_my_company ruby rubyonrails create_my_startup website e_commerce website web_agency redesign_my_website],
                  image_src: "http://netstarted.com/images/createyourtechstartup.jpg",
                  icon: '/favicon.png', type: 'image/png'
    @form = Form.new
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    if @form.deliver
      flash.now[:toastr] = " Materialize.toast('I am a toast!', 4000)"
      redirect_to new_form_path
    else
      flash.now[:alert] = 'Cannot send message'
      render :new
    end
  end
end
