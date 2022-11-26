class Land < ApplicationRecord
  belongs_to :area
  has_many :trees
end
