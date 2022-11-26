class TreeType < ApplicationRecord
  # belongs_to :area 
  has_many :trees
  mount_uploader :typeimg, TypeimgUploader
end
