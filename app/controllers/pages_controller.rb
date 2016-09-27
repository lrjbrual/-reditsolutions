class PagesController < ApplicationController
	def home
		set_meta_tags site:"NetStarted", 	
		title: "How to create your tech startup",
		description: "How many times did you wish being able to code, to create your own tech company?
		what if I told you, now it is possible, would you act on it? NetStarted is a startup which helps entrepreneur with a real project to start their dream.
		Willing to know how? HAVE A LOOK",
		keywords: %w[startup tech_startup start_my_company ruby rubyonrails create_my_startup website e_commerce website web_agency redesign_my_website],
		image_src: "http://netstarted.com/images/createyourtechstartup.jpg",
		icon: '/favicon.png', type: 'image/png'
	end
end
