class Area < ApplicationRecord
  has_many :lands, dependent: :destroy
  has_many :tree_types
  mount_uploader :areaimg, AreaimgUploader
end
