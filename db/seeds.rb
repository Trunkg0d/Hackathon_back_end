5.times do |n|
  User.create(
    name: "Trunk Lee",
    email: "trung#{n}@gmail.com",
    phone: "123456",
    address: "HCM City",
    password: "123456",
    password_confirmation: "123456",
    avatar: File.open(File.join(Rails.root, 'app', 'assets','images', 'user.webp'))
  )
end

4.times do |n|
  TreeType.create(
    name: "Cây sưa đỏ",
    price: 10000,
    description: "Cây Sưa Đỏ có thân thẳng, to và khá sần sùi. Gỗ Sưa Đỏ có màu nâu đỏ hoặc xám, đường vân khá đẹp mắt. 
    Lá chúng là kép mọc so le nhau có hình bầu dục hoặc trái xoan.",
    typeimg: "https://drive.google.com/file/d/1_4Ow-1XSsLm1mEUZx6RMY--nlpyvc6sT/view?usp=share_link"
  )
end

3.times do |n|
  Area.create(
    org_name: "Cục quản lý đất đai",
    address: "Đăk Lăk",
    width: 1200,
    length: 2000,
    x: 11.106144,
    y: 106.847815,
    limit: 100,
    tree_type_ids: [1, 3],
    areaimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'area2.png'))
  )
end

3.times do |n|
  Area.create(
    org_name: "Cục quản lý đất đai",
    address: "Đăk Lăk",
    width: 1200,
    length: 2000,
    x: 11.106144,
    y: 106.847815,
    limit: 100,
    tree_type_ids: [2, 4],
    areaimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'area2.png'))
  )
end

2.times do |n|
  Area.create(
    org_name: "Cục quản lý đất đai",
    address: "Đăk Lăk",
    width: 1200,
    length: 2000,
    x: 11.106144,
    y: 106.847815,
    limit: 100,
    tree_type_ids: [2, 4],
    areaimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'area3.png'))
  )
end

5.times do |n|
  Land.create(
    area_id: 1,
    landimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'a1land1.png')),
    limit: 100
  )
end

5.times do |n|
  Land.create(
    area_id: 2,
    landimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'a1land2.png')),
    limit: 100
  )
end

5.times do |n|
  Land.create(
    area_id: 3,
    landimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'a1land3.png')),
    limit: 100
  )
end

3.times do |n|
  Land.create(
    area_id: 4,
    landimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'a2land3.png')),
    limit: 100
  )
end

3.times do |n|
  Land.create(
    area_id: 5,
    landimg: File.open(File.join(Rails.root, 'app', 'assets','images', 'a2land1.png')),
    limit: 100
  )
end

Tree.create(user_id: 1, land_id: 1, tree_type_id: 1)
Tree.create(user_id: 2, land_id: 2, tree_type_id: 2)

Tree.create(user_id: 3, land_id: 3, tree_type_id: 3)
Tree.create(user_id: 2, land_id: 4, tree_type_id: 0)
Tree.create(user_id: 3, land_id: 5, tree_type_id: 3)

Tree.create(user_id: 4, land_id: 5, tree_type_id: 3)
Tree.create(user_id: 5, land_id: 4, tree_type_id: 0)
Tree.create(user_id: 3, land_id: 6, tree_type_id: 3)

Tree.create(user_id: 2, land_id: 8, tree_type_id: 3)
Tree.create(user_id: 1, land_id: 4, tree_type_id: 0)
Tree.create(user_id: 3, land_id: 6, tree_type_id: 3)


