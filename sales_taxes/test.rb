i = Inventory.new
o = Order.new
apple = Item.new({type: 'food', price: 2.32, import: true, inventory: i})
medicine = Item.new({type: 'medicical', price: 8.22, import: false, inventory: i})
book = Item.new({type: 'book', price: 15.44, import: false, inventory: i})
perfume = Item.new({type: 'other', price: 68.02, import: true, inventory: i})
o.add_items(apple, medicine, book, perfume)
