require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "send_notice" do
    mail = Notifier.send_notice
    assert_equal "Send notice", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
