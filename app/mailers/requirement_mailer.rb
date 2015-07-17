class RequirementMailer < ApplicationMailer
	def send_requirement(a,b,c,d,e,f)
		@a=a,
		@b=b,
		@c=c,
		@d=d,
		@e=e,
		@f=f
		mail(:to => "katta_reddy04@gmail.com", :subject => "user Requirements")
	end
end



