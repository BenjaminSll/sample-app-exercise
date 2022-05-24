require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get signup_path
    assert_response :success
  end

  test 'should create user and add flash' do
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'TestUser',
                                         email: 'testuser3@here.ok',
                                         password: 'ceoklmodp',
                                         password_confirmation: 'ceoklmodp' } }
    end
    assert_equal 'Welcome aboard !', flash[:success]
  end
end
