require 'test_helper'

class AdminControllerTest < ActionController::TestCase
<<<<<<< HEAD
  
  fixtures :users

  test "index" do
    get :index
    assert_redirected_to :action => "login"
    assert_equal "Please login", flash[:notice]
  end

  test "index with user" do
    get :index, {}, {:user_id => users(:dave).id}
    assert_response :success
    assert_template "index"
  end

  test "login" do
  	dave = users(:dave)
  	post :login, :name => dave.name, :password => 'secret'
  	assert_redirected_to :action => "index"
  	assert_equal dave.id, session[:user_id]
	end

	test "bad password" do
		dave = users(:dave)
		post :login, :name => dave.name, :password => 'wrong'
		assert_template 'login'
	end
=======
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
>>>>>>> eb605ed9905513838c6d8045e5f853b90589ffc4
end
