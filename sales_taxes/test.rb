# def initialize(attributes = {})
#   @type = attributes[:type]
#   @price = attributes[:price]
#   @import = attributes[:import]
#   @quantity = attributes[:quantity] || 1
#   attributes[:inventory].inventory_list << self #if inventory is specified, push item into inventory_list. note: inventory should always be specified, is there a way that I can make this manditory???
#   attributes[:order].order_list << self #if an order is specified, push item into order_list
# end
i = Inventory.new
o = Order.new
apple = Item.new({type: 'food', price: 2.32, import: false, inventory: i})
medicine = Item.new({type: 'medicical', price: 8.22, import: true, inventory: i})
book = Item.new({type: 'book', price: 15.44, import: false, inventory: i})
perfume = Item.new({type: 'other', price: 68.02, import: true, inventory: i})
