class ApplicationMailer < ActionMailer::Base
  default from: ENV["MAILER_USER_NAME"]
end