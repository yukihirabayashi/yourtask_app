class Task < ApplicationRecord
  
  belongs_to :user
  
    validates :content, presence: true
    validates :content,    length: { maximum: 75 }      # 「75文字以下」

    mount_uploader :image, ImageUploader
end
