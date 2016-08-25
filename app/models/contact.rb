class Contact < ActiveRecord::Base

include MailForm::Delivery

  append :remote_ip, :user_agent, :session
  attributes :first_name, :last_name, :email, :message, :created_at

  def headers
    {
     subject: "Contact RedIt",
 	to: "lrjbrual@live.com",
 	from: %("#{first_name} #{last_name}" <#{email}>)
    }
  end
end

end
