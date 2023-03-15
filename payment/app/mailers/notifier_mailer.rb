class NotifierMailer < ApplicationMailer
        def welcome
            @user = params[:user]
            mail(to: "rt15122000@gmail.com", from: "sharmarick59@gmail.com", subject: "welcome to the team")
        end
     
end
