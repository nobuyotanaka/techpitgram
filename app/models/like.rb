class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  #ユーザーが同じ投稿に対して「いいね」できないようにする
  validates :user_id, uniqueness: {scope: :post_id}
end
