class Notifier < ActionMailer::Base
  default :from => "finne@phynn.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.send_notice.subject
  #
  def send_notice(name)
    @clientname = name

    mail :to => "finne@ciagent.com", :subject => "New Incident"
  end
end
