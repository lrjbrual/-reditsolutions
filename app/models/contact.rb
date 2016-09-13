class Contact < MailForm::Base
  append :remote_ip, :user_agent

  attribute :your_name, :validate => true
  attribute :phone_number, :validate => true
  attribute :email, :validate => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  attribute :message, :validate => true
  #attribute :nickname,  :captcha => true

  def headers
    {
    subject: "Website Netstarted Email",
    to: "lrjbrual@lrjbrual.com",
    from: %("#{your_name}" <#{email}>)
  }
  end
end
