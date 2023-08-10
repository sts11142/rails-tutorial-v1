module SessionsHelper
  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      # sessionがある＝ログインしている→user_idを取得しておく
      @current_user ||= User.find_by(id: session[:user_id])  # 無駄な検索を避けるため，||= を使用する
    end
  end

  # ユーザーがログインしていればtrue，その他ならfalseを返す
  # sessionに基づいて判定する
  def logged_in?
    !current_user.nil?
  end

  # 現在のユーザーをログアウトする
  def log_out
    reset_session
    @current_user = nil
  end
end
