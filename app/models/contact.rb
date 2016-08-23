class Contact < MailForm::Base
	append :remote_ip, :user_agent, :session

	validates :first_name, :validate => true
	validates :last_name, :validate => true
	validates :email, :validate => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :message, :validate => true

	def headers
		{
			subject: "Contact RedIt",
			to: "lrjbrual@live.com",
			from: %("#{first_name} #{last_name}" <#{email}>)
		}
	end
end
