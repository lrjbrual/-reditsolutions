class PagesController < ApplicationController
  def home
  	set_meta_tags 	title: 'NetStarted, create your tech startup',
  					description: "How can you create you tech startup?
How many times did you wish being able to code, to create your own tech company?
what if I told you, now it is possible, would you act on it? NetStarted is a startup which helps entrepreneur with a real project to start their dream.
Willing to know how? HAVE A LOOK",
					keywords: "startup, tech_startup, financial_freedom, entreprenur, ruby, rubyonrails"
  end

end
