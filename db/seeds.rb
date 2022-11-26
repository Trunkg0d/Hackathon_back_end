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