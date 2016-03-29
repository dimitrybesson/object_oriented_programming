# Test for my own purposes
# i = Inventory.new
# o = Order.new
# apple = Item.new({type: 'food', price: 2.32, import: true, inventory: i})
# medicine = Item.new({type: 'medicical', price: 8.22, import: false, inventory: i})
# book = Item.new({type: 'book', price: 15.44, import: false, inventory: i})
# perfume = Item.new({type: 'other', price: 68.02, import: true, inventory: i})
# o.add_items(apple, medicine, book, perfume)

#TEST with sample inputs
#Input 1
  # i = Inventory.new
  # o = Order.new
  #
  # book = i.input_item
  # # 1 book at 12.49
  # music = i.input_item
  # # 1 music CD at 14.99
  # chocolate = i.input_item
  # # 1 chocolate bar at 0.85
  #
  # o.add_items(book, music, chocolate)
  # o.calculate_tax
  # o.calculate_duty
  # o.output

#Input 2 Some of the output values are slightly off, I think this is because I generally saved rounding until the end to maximize accuracy. Also I didn't fully understand how they wanted us to round in the instructions
  # i = Inventory.new
  # o = Order.new
  #
  # chocolates = i.input_item
  # # 1 imported box of chocolates at 10.00
  # perfume = i.input_item
  # # 1 imported bottle of perfume at 47.50
  #
  # o.add_items(chocolates, perfume)
  # o.calculate_tax
  # o.calculate_duty
  # o.output

  #Input 3 Same thing with rounding in this one
  # i = Inventory.new
  # o = Order.new
  #
  # perfume = i.input_item
  # # 1 imported bottle of perfume at 27.99
  # perfume2 = i.input_item
  # # 1 bottle of perfume at 18.99
  # medicine = i.input_item
  # # 1 packet of headache pills at 9.75
  # chocolates = i.input_item
  # # 1 box of imported chocolates at 11.25
  #
  # o.add_items(perfume, perfume2, medicine, chocolates)
  # o.calculate_tax
  # o.calculate_duty
  # o.output
