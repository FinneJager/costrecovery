require 'test_helper'

class PassResetTest < ActionMailer::TestCase
  test "send_new_pass" do
    mail = PassReset.send_new_pass
    assert_equal "Send new pass", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
