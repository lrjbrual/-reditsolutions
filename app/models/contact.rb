class Contact < MailForm::Base

	append :remote_ip, :user_agent, :session
	-
	attribute :first_name,      :validate => true
	attribute :last_name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message 		:validate =>true
	attribute :nickname,  :captcha  => true

	def headers
		{
			subject: "Contact RedIt",
			to: "lrjbrual@live.com",
			from: %("#{first_name} #{last_name}" <#{email}>)
		}
	end

end
