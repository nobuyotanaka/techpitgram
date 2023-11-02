class Post < ApplicationRecord

  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :photos
  # 関連付けしたphotoモデルを一緒にデータ保存できる
end
