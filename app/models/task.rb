class Task < ApplicationRecord
  
  belongs_to :user
  
    validates :content, presence: true
<<<<<<< HEAD
    validates :content,    length: { maximum: 75 }      # 「75文字以下」
=======
    validates :content, length: [ maximum:100 ]  # 100文字以下
>>>>>>> afefe615c53ef2a43203df56cf08ceef46a51aeb
    
    mount_uploader :image, ImageUploader
    
   
end
