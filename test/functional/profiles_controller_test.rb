require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:shaun).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

  test "if profile not found, 404 shown" do
    get :show, id: "doesn't exist"
    assert_response :not_found
   end

   test "variables are assigned on show page" do
   	get :show, id: users(:shaun).profile_name
   	assert assigns(:user)
   	assert_not_empty assigns(:statuses)
  end

  test "only correct statuses are shown" do
    get :show, id: users(:shaun).profile_name
    assigns(:statuses).each do |status|
    	assert_equal users(:shaun), status.user
  end
 end

end
