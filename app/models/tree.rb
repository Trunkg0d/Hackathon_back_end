class Tree < ApplicationRecord
  belongs_to :user 
  belongs_to :land
  has_many :tree_types
end
