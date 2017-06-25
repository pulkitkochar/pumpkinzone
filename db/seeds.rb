Category.delete_all
Category.create! id: 1, name: 'Pumpkin Pressure Cookers'
Category.create! id: 2, name: 'Royal Finish Cookware'
Category.create! id: 3, name: 'Hard Anodized Cookware'
Category.create! id: 4, name: 'Induction Cookware'
Category.create! id: 5, name: 'Anodized Cookware'

Product.delete_all
Product.create! id: 1, category_id: 3, name: 'PUMPKIN KADAHI WITH SS LID', price: 649, active: true
Product.create! id: 2, category_id: 1,name: "Pumpkin Induction Pressure Cooker", price: 0.29, active: true
Product.create! id: 3, category_id: 1,name: "Pumpkin Hard Anodized Pressure Cooker", price: 1.99, active: true
Product.create! id: 4, category_id: 1,name: "Pumpkin Regular Pressure Cooker", price: 1.99, active: true
Product.create! id: 5, category_id: 1,name: "Pumpkin Handi Pressure Cooker", price: 1.99, active: true
Product.create! id: 6, category_id: 1,name: "Pumpkin Elantra Pressure Cooker", price: 1.99, active: true
Product.create! id: 7, category_id: 1,name: "Pumpkin Outer Lid Pressure Cooker", price: 1.99, active: true
Product.create! id: 8, category_id: 1,name: "Pumpkin Bigg Boss Pressure Cooker", price: 1.99, active: true
Product.create! id: 9, category_id: 1,name: "Pumpkin Jumbo Pressure Cooker", price: 1.99, active: true
Product.create! id: 10, category_id: 2,name: "KADAHI", price: 1.99, active: true
Product.create! id: 11, category_id: 2,name: "Sauce Pan", price: 1.99, active: true
Product.create! id: 12, category_id: 2,name: "Fry Pan", price: 1.99, active: true
Product.create! id: 13, category_id: 2,name: "Tope", price: 1.99, active: true
Product.create! id: 14, category_id: 2,name: "Mini Kadahi", price: 1.99, active: true
Product.create! id: 15, category_id: 2,name: "Tawa", price: 1.99, active: true
Product.create! id: 16, category_id: 2,name: "Dosa Tawa", price: 1.99, active: true
Product.create! id: 17, category_id: 2,name: "Concave Tawa", price: 1.99, active: true
Product.create! id: 18, category_id: 3,name: "Tasra", price: 1.99, active: true
Product.create! id: 19, category_id: 3,name: "Kadahi", price: 1.99, active: true
Product.create! id: 20, category_id: 3,name: "Sauce Pan", price: 1.99, active: true
Product.create! id: 21, category_id: 3,name: "Fry Pan", price: 1.99, active: true
Product.create! id: 22, category_id: 3,name: "Tawa", price: 1.99, active: true
Product.create! id: 23, category_id: 3,name: "Tarka Pan", price: 1.99, active: true
Product.create! id: 24, category_id: 3,name: "Top/Pot", price: 1.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"