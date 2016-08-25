<<<<<<< HEAD
class Contact < MailForm::Base
  append :remote_ip, :user_agent, :session

  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  attribute :message, :validate => true
  #attribute :nickname,  :captcha => true

  def headers
    {
    subject: "Contact Form",
    to: "lrjbrual@lrjbrual.com",
    from: %("#{name}" <#{email}>)
  }
  end
end

>>>>>>> origin/master
