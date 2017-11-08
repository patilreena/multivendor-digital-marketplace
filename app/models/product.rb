class Product < ApplicationRecord
  resourcify
  belongs_to :seller, class_name: 'User'
  has_many :order_items
  has_many :ratings, dependent: :destroy
  has_many :images, dependent: :destroy

  default_scope { where(is_active: 1) }

  has_attached_file :asset
  has_attached_file :thumbnail

  def self.search(search)
  	where("title LIKE ?", "%#{search}%") 
  end
  
  validates_attachment_content_type :thumbnail, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates_attachment_content_type :asset, content_type: [
      'application/msword',
      'application/pdf',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      'application/zip']
end



