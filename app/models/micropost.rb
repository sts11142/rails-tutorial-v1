class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  default_scope -> { order(created_at: :desc) }  # lambdaはProc（持ち運び可能なブロック）を作成する方法のうちの1つ

  validates :user_id, presence: true
  validates :content, presence: true,
                      length: { maximum: 140}
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "must be a valid image format" },
                      size:         { less_than: 5.megabytes,
                                      message:   "should be less than 5MB" }
end
