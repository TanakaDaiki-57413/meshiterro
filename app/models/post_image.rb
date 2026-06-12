class PostImage < ApplicationRecord
  has_one_attached :image
  
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  # N:1の関係を結ぶ
  belongs_to :user

  #バリデーション設定
  validates :caption, presence: true
  validates :shop_name, presence: true

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

  # 該当するユーザーIDが存在するかの確認
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end


end
