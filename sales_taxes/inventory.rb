class Inventory
  attr_reader :inventory_list

  def initialize
    @inventory_list = Array.new
  end

  # def display
  #   puts "INVENTORY:"
  #   puts "TYPE:\t\tPRICE:\tIMPORT:\tQUANT:\tTAX:\tDUTY:\tDESCRIPTION:"
  #   @inventory_list.each do |item|
  #     puts "#{item.type}\t\t#{item.price}\t#{item.import}\t#{item.quantity}\t#{item.tax || '--'}\t#{item.duty || '--'}\t#{item.description}"
  #   end
  # end

  def display
    tp @inventory_list, :type, :price, :import, :quantity, :description
  end

  def input_item
    puts "Please provide item input:"
    puts "Format: quantity item description at price"
    puts "e.g. 1 box of apples at 5.99"
    input = gets.chomp
    item_details = input.split(" ")

    attributes = {}
    food_tags = ['chocolate', 'chocolates'] #a list of words to look for to determine if item is of type food
    medical_tags = ['pills'] # I kept the lists short so as to only deal with the sample inputs and a few other cases
    book_tags = ['book', 'books'] # I feel like overall, this is not a good way to deal with categorizing items, because these lists will get extremely long and there will always be items that they will miss, but I can't come up with a better way...for now

    # Setting type attribute
    if !(item_details & book_tags).empty? # if item_details contains any item from book_tags then set type to book
      attributes[:type] = 'book'
    elsif !(item_details & medical_tags).empty?
      attributes[:type] = 'medical'
    elsif !(item_details & food_tags).empty?
      attributes[:type] = 'food'
    else
      attributes[:type] = 'other'
    end
    # Setting import status
    if item_details.include?('imported')
      attributes[:import] = true
    else
      attributes[:import] = false
    end
    # Setting price, quantity
    attributes[:price] = item_details.pop.to_f
    attributes[:quantity] = item_details.shift.to_i
    # Setting description
    item_details.delete("at")
    description = item_details.join(" ")
    attributes[:description] = description
    p attributes
    create_item(attributes)
  end

  def create_item(attributes)
    item = Item.new(attributes)
    @inventory_list << item
    item
  end

  def add_item_to_order(order, item) # select item from inventory and add it to an order
    #look through inventory, pick item
    #order.add_item(item)
  end

  def get_item
  end

  def delete_item

  end

end
