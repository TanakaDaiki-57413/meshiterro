class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  # 1:Nの関係を結ぶ
  has_many :post_images, dependent: :destroy

end
