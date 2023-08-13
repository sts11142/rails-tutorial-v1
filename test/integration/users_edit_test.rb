require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test 'unsuccessful edit' do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name: '',
                                              email: 'foo@invalid',
                                              password: 'foo',
                                              password_confirmation: 'bar' } }
    assert_template 'users/edit'
  end

  test 'successful edit' do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'

    name  = 'foo bar'
    email = 'foo@bar.com'

    # PATCHメソッドでデータを更新する
    patch user_path(@user), params: { user: { name:,
                                              email:,
                                              password: '',
                                              password_confirmation: '' } }

    assert_not flash.empty?
    assert_redirected_to @user

    # この時点では@userの中身はsetup時の古いデータ
    @user.reload
    # reloadメソッドによって最新のデータベースの状態と@userが同期した
    assert_equal name,  @user.name
    assert_equal email, @user.email
  end
end
