require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "a user should enter first name" do
	user = User.new
	assert !user.save
	assert !user.errors[:first_name].empty?
  end

  	test "a user should enter last name" do
	user = User.new
	assert !user.save
	assert !user.errors[:last_name].empty?
  end

  	test "a user should enter profile name" do
	user = User.new
	assert !user.save
	assert !user.errors[:profile_name].empty?
  end

  test "Unique profile name" do
   user = User.new
   user.profile_name = users(:shaun).profile_name
 
   assert !user.save
   assert !user.errors[:profile_name].empty?
  end

  test "profile name formatting no spaces" do
     user = User.new(first_name: 'Shaun', last_name: "Jackson", email: "shaun@shaun1.com")
     user.password = user.password_confirmation = 'afafafafaafafa'
     
     user.profile_name = "My profile without spaces"

     assert !user.save
     assert !user.errors[:profile_name].empty?
     assert !user.errors[:profile_name].include?("Must be formatted correctly.")
  end

  test "a user must have a correctly formatted profile name" do
    user = User.new(first_name: 'Shaun', last_name: "Jackson", email: "shaun@shaun1.com")
    user.password = user.password_confirmation = 'afafafafaafafa'
    user.profile_name = 'shaun'
    assert user.valid?
  end
end

