class TreeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :land_id, :tree_type_id
end
