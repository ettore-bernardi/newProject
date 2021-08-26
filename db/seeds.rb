# frozen_string_literal: true

User.create!(
  role: 1,
  email: 'adm@site.com',
  password: '123321'
)

User.create!(
  role: 0,
  email: 'client@site.com',
  password: '123321'
)

Product.create!(
  name: 'Cachorro completo',
  price: 10,
  active: true
)

Product.create!(
  name: 'Cachorro normal',
  price: 8,
  active: true
)

Order.create(
  user_id: 2,
  done: false
)

Order.create(
  user_id: 2,
  done: true
)

Item.create!(
  product_id: 1,
  quantity: 1,
  order_id: 1
)

Item.create!(
  product_id: 2,
  quantity: 2,
  order_id: 1
)

Item.create!(
  product_id: 1,
  quantity: 3,
  order_id: 2
)
