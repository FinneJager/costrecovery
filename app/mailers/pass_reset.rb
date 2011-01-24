class PassReset < ActionMailer::Base
  default :from => "finne@ciagent.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pass_reset.send_new_pass.subject
  #
  def send_new_pass(email)
    @email_address = email

    mail :to => @email_address, :subject => "New Password"
  end
end
