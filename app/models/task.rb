class Task < ApplicationRecord
  
  belongs_to :user
  
    validates :name, presence: true
    validates :content, presence: true
    
    mount_uploader :image, ImageUploader
    
   
end
