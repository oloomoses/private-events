require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'first name', username: 'username')
  end

  test 'user should be valid' do
    assert @user.valid?
  end
end
