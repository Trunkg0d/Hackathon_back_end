class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :phone, :name, :address, :tree_count
end
