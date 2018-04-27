class Task < ApplicationRecord
  
 
  
    validates :name, presence: true
    validates :content, presence: true
    
    mount_uploader :image, ImageUploader
    
    belongs_to :user
end
