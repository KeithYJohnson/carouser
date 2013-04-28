require 'test_helper'

# Active Record Quix
class UserTest < ActiveSupport::TestCase
	test "create user" do
		user = User.new
		assert user.invalid?

	end

end
