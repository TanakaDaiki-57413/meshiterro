class PostImage < ApplicationRecord
  has_one_attached :image  
  # N:1の関係を結ぶ
  belongs_to :user
end
