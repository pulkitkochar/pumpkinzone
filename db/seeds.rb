Category.delete_all
Category.create! id: 1, name: 'Pumpkin Pressure Cookers'
Category.create! id: 2, name: 'Royal Finish Cookware'
Category.create! id: 3, name: 'Hard Anodized Cookware'
Category.create! id: 4, name: 'Induction Cookware'
Category.create! id: 5, name: 'Anodized Cookware'

Product.delete_all
Product.create! id: 1, category_id: 4, name: 'PUMPKIN DOSA TAWA INDUCTION (NON STICK)', active: true
ProductVariant.create! product_id: 1, variation: 'DIA 30 cm', price: 885
ProductVariant.create! product_id: 1, variation: 'DIA 28 cm', price: 825
ProductVariant.create! product_id: 1, variation: 'DIA 26 cm', price: 765

Product.create! id: 2, category_id: 1,name: "Pumpkin Pressure cooker (Delight Model)", active: true
ProductVariant.create! product_id: 2, variation: '5 litre', price: 1350
ProductVariant.create! product_id: 2, variation: '3 litre', price: 1250
ProductVariant.create! product_id: 2, variation: '7 litre', price: 1540

Product.create! id: 3, category_id: 1,name: "PUMPKIN PRESSURE COOKER (Elentra Model)", active: true
ProductVariant.create! product_id: 3, variation: '3 litre', price: 1320

Product.create! id: 4, category_id: 1,name: "PUMPKIN PRESSURE COOKER (Handi Model)", active: true
ProductVariant.create! product_id: 4, variation: '5 litre', price: 1440
ProductVariant.create! product_id: 4, variation: '3 litre', price: 1320
ProductVariant.create! product_id: 4, variation: '7 litre', price: 1540

Product.create! id: 5, category_id: 4,name: "PUMPKIN COMBO OFFER (KADAHI+FRYPAN+DOSA TAWA)", active: true
ProductVariant.create! product_id: 5, variation: 'DIA 240 MM', price: 2390

Product.create! id: 6, category_id: 3,name: "PUMPKIN SOUCE PAN (HARD ANODISED)", active: true
ProductVariant.create! product_id: 6, variation: '1.50 LTR', price: 410
ProductVariant.create! product_id: 6, variation: '1.25 LTR', price: 380
ProductVariant.create! product_id: 6, variation: '2.50 LTR', price: 580
ProductVariant.create! product_id: 6, variation: '2.00 LTR', price: 480

Product.create! id: 7, category_id: 4,name: "PUMPKIN PRESSURE COOKER WITH INDUCTION BASE (DELIGHT MODEL)", active: true
ProductVariant.create! product_id: 7, variation: '3 LTR', price: 1320
ProductVariant.create! product_id: 7, variation: '5 LTR', price: 1440
ProductVariant.create! product_id: 7, variation: '7 LTR', price: 1560

Product.create! id: 8, category_id: 5,name: "PUMPKIN DEEP FRYPAN WITH GLASS LID (NON STICK)", active: true
ProductVariant.create! product_id: 8, variation: 'DIA 260 CM', price: 1110
ProductVariant.create! product_id: 8, variation: 'DIA 240 CM', price: 910

Product.create! id: 9, category_id: 3,name: "PUMPKIN FRYPAN WITH SS LID (HARD ANODISED)", active: true
ProductVariant.create! product_id: 9, variation: '270 MM', price: 795
ProductVariant.create! product_id: 9, variation: '250 MM', price: 715
ProductVariant.create! product_id: 9, variation: '210 MM', price: 640
ProductVariant.create! product_id: 9, variation: '230 MM', price: 670

Product.create! id: 10, category_id: 3,name: "PUMPKIN DEEP FRYPAN WITH SS LID (HARD ANODIZED)", active: true
ProductVariant.create! product_id: 10, variation: '2.50 LTR', price: 985
ProductVariant.create! product_id: 10, variation: '2 LTR', price: 895
ProductVariant.create! product_id: 10, variation: '1.50 LTR', price: 725

Product.create! id: 11, category_id: 3,name: "PUMPKIN TADKA PAN WITH HANDLE ( HARD ANODISED )", active: true
ProductVariant.create! product_id: 11, variation: '135 MM', price: 280
ProductVariant.create! product_id: 11, variation: '110 MM', price: 250

Product.create! id: 12, category_id: 3,name: "PUMPKIN FRYPAN WITHOUT LID (HARD ANODISED)", active: true
ProductVariant.create! product_id: 12, variation: '270 MM', price: 620
ProductVariant.create! product_id: 12, variation: '250 MM', price: 570
ProductVariant.create! product_id: 12, variation: '230 MM', price: 500
ProductVariant.create! product_id: 12, variation: '210 MM', price: 450

Product.create! id: 13, category_id: 3,name: "PUMPKIN PRESSURE COOKER (Elentra Model) Hard Anodized", active: true
ProductVariant.create! product_id: 13, variation: '3 Litre', price: 2150
ProductVariant.create! product_id: 13, variation: '5 Litre', price: 2250
ProductVariant.create! product_id: 13, variation: '7 Litre', price: 3280

Product.create! id: 14, category_id: 4,name: "PUMPKIN COMBO OFFER (KADAHI+FRYPAN+DOSA TAWA)", active: true
ProductVariant.create! product_id: 14, variation: 'DIA 260 MM', price: 2390

Product.create! id: 15, category_id: 4,name: "PUMPKIN PRESSURE COOKER WITH INDUCTION BASE(ELENTRA MODEL)", active: true
ProductVariant.create! product_id: 15, variation: '7 LTR', price: 1640
ProductVariant.create! product_id: 15, variation: '5 LTR', price: 1520
ProductVariant.create! product_id: 15, variation: '3 LTR', price: 1410

Product.create! id: 16, category_id: 4,name: "PUMPKIN PRESSURE COOKER WITH INDUCTION BASE(HANDI MODEL)", active: true
ProductVariant.create! product_id: 16, variation: '7 LTR', price: 1640
ProductVariant.create! product_id: 16, variation: '5 LTR', price: 1520
ProductVariant.create! product_id: 16, variation: '3 LTR', price: 1410
ProductVariant.create! product_id: 16, variation: '8 LTR', price: 2130
ProductVariant.create! product_id: 16, variation: '6 LTR', price: 1710
ProductVariant.create! product_id: 16, variation: '2.50 LTR', price: 1070
ProductVariant.create! product_id: 16, variation: '2 LTR', price: 980
ProductVariant.create! product_id: 16, variation: '5 LTR', price: 1490
ProductVariant.create! product_id: 16, variation: '4 LTR', price: 1320

Product.create! id: 17, category_id: 2,name: "PUMPKIN KADAHI WITH SS LID (HARD ANODISED) WITH INDUCTION BASE", active: true
ProductVariant.create! product_id: 17, variation: '1.50 LTR', price: 810








OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"