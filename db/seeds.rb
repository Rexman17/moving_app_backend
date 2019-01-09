# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Move.delete_all
Box.delete_all
Item.delete_all

User.create(name: "Ali")

Move.create(name: "Leaving for College", date: Date.new(2019, 8, 12), user_id: 1, icon: "https://static.thenounproject.com/png/5701-200.png")
Move.create(name: "Moving to NYC", date: Date.new(2019, 2, 17), user_id: 1, icon: "https://image.flaticon.com/icons/svg/53/53170.svg")

# Move 1
Box.create(name: "Bedding", category: "Bedroom", move_id: 1)
Box.create(name: "Random Blankets", category: "Den", move_id: 1)
Box.create(name: "Cleaning Supplies", category: "Kitchen", move_id: 1)

# Move 2
Box.create(name: "A Ton of Plates", category: "Kitchen", move_id: 2)
Box.create(name: "Coffee Table Items", category: "Living Room", move_id: 2)

# First Move First Box
Item.create(name: "Comforter", image: "https://www.shopmarriott.com/images/products/v2/lrg/Marriott-down-duvet-comforter-MAR-112_1_lrg.jpg", box_id: 1)
Item.create(name: "Throw Pillows", image: "https://media.kohlsimg.com/is/image/kohls/3427815?wid=500&hei=500&op_sharpen=1", box_id: 1)

# First Move Second Box
Item.create(name: "Pillows", image: "https://www.greatsleep.com/on/demandware.static/-/Sites-tbp-master-catalog/default/dw9ff5c1cf/product-images/pillows/nautica/down-alt-pillow-2-pack-na-91644/nautica-down-alternative-pillow-2-pack_91644-icon-2500x2500.jpg", box_id: 2)
Item.create(name: "Stuffed Animals", image: "https://s7d9.scene7.com/is/image/JCPenney/DP0817201617082870M?resmode=sharp2&op_sharpen=1&wid=550&hei=550", box_id: 2)

# First Move Third Box
Item.create(name: "Pillows", image: "https://www.greatsleep.com/on/demandware.static/-/Sites-tbp-master-catalog/default/dw9ff5c1cf/product-images/pillows/nautica/down-alt-pillow-2-pack-na-91644/nautica-down-alternative-pillow-2-pack_91644-icon-2500x2500.jpg", box_id: 3)
Item.create(name: "Stuffed Animals", image: "https://s7d9.scene7.com/is/image/JCPenney/DP0817201617082870M?resmode=sharp2&op_sharpen=1&wid=550&hei=550", box_id: 3)

# Second Move First Box
Item.create(name: "Favorite Wooden Spoon", image: "https://images.bloomingdalesassets.com/is/image/BLM/products/2/optimized/9389152_fpx.tif?op_sharpen=1&wid=500&fit=fit,1&$filtersm$", box_id: 4)
Item.create(name: "Napkins", image: "https://www.westelm.com/weimgs/rk/images/wcm/products/201849/0471/img100o.jpg", box_id: 4)

# Second Move Second Box
Item.create(name: "Coffee Table Books", image: "https://static1.squarespace.com/static/598114ee579fb353a70cdfc6/5a454418652dea2c66704a3c/5a5681d9652dea23bbb29f9e/1515618791582/Books.jpg", box_id: 5)
Item.create(name: "Coasters", image: "https://cdn.shopify.com/s/files/1/0012/4616/7065/products/marble_coaster_01.jpg?v=1538084442", box_id: 5)
