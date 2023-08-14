class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }  # lambdaはProc（持ち運び可能なブロック）を作成する方法のうちの1つ

  validates :user_id, presence: true
  validates :content, presence: true,
                      length: { maximum: 140}
end
