5.times do |n|
  User.create(
    name: "Trunk Lee",
    email: "trung#{n}@gmail.com",
    phone: "123456",
    address: "HCM City",
    password: "123456",
    password_confirmation: "123456"
  )
end

4.times do |n|
  TreeType.create(
    name: "Cây sưa đỏ",
    price: 10000,
    description: "Cây Sưa Đỏ có thân thẳng, to và khá sần sùi. Gỗ Sưa Đỏ có màu nâu đỏ hoặc xám, đường vân khá đẹp mắt. 
    Lá chúng là kép mọc so le nhau có hình bầu dục hoặc trái xoan.",
    image: "https://drive.google.com/file/d/1_4Ow-1XSsLm1mEUZx6RMY--nlpyvc6sT/view?usp=share_link"
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
    image: "https://vnn-imgs-f.vgcloud.vn/2021/06/24/14/d1.jpg"
  )
end

2.times do |n|
  Land.create(
    area_id: 1,
    image: "https://www.baoquangbinh.vn/dataimages/201604/original/images593040_anh3.jpg",
    limit: 100
  )
end

3.times do |n|
  Land.create(
    area_id: 2,
    image: "https://www.baoquangbinh.vn/dataimages/201604/original/images593040_anh3.jpg",
    limit: 100
  )
end

Tree.create(user_id: 1, land_id: 1, tree_type_ids: [1,2])
Tree.create(user_id: 1, land_id: 2, tree_type_ids: [1,2])

Tree.create(user_id: 1, land_id: 3, tree_type_ids: [1,2])
Tree.create(user_id: 1, land_id: 4, tree_type_ids: [1,2])
Tree.create(user_id: 1, land_id: 5, tree_type_ids: [1,2])
