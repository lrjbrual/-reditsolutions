class Contact < MailForm::Base
  append :remote_ip, :user_agent, :session

  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :email, :validate => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  attribute :message, :validate => true
  #attribute :nickname,  :captcha => true

  def headers
    {
    subject: "Contact Form",
    to: "lrjbrual@lrjbrual.com",
    from: %("#{first_name}" <#{email}>)
  }
  end
end
