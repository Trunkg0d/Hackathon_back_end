class Tree < ApplicationRecord
  belongs_to :user 
  belongs_to :land
  belongs_to :tree_type
  mount_uploader :treeimg, TreeimgUploader
end
