class Land < ApplicationRecord
  belongs_to :area
  has_many :trees
  mount_uploader :landimg, LandimgUploader
end
