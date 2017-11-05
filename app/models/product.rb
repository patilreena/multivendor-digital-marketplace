class Product < ApplicationRecord
  has_many :order_items

  default_scope { where(is_active: true) }
  has_many :ratings, dependent: :destroy
  
  has_attached_file :asset

  def self.search(search)
  	where("name LIKE ?", "%#{search}%") 
  end
  
  validates_attachment_content_type :asset, content_type: [
      'application/msword',
      'application/pdf',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      'application/zip']
end



