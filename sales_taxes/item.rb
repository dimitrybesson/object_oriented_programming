class Item
  attr_accessor :type, :price, :import, :quantity, :tax, :duty, :description

  def initialize(type, price, import, quantity = 1, description = "")
    @type = type
    @price = price
    @import = import
    @quantity = quantity
  #  @tax = tax # can we have this and duty start off
  #  @duty = duty
    @description = description
  end
end

class Order
  attr_reader :item_list

  def initialize
    @item_list = Array.new
  end

  def display
    puts "ITEM LIST:"
    puts "TYPE:\tPRICE:\tIMPORT:\tQUANT:\tTAX:\tDUTY:\tDESCRIPTION:"
    @item_list.each do |item|
      puts "#{item.type}\t#{item.price}\t#{item.import}\t#{item.quantity}\t#{item.tax || '--'}\t#{item.duty || '--'}\t#{item.description}"
    end
  end

  def add_items(*items)
    items.each do |item|
      @item_list << item
    end
  end

  def calculate_tax
    @item_list.each do |item|
      unless item.type == "book" || item.type == "medical" || item.type == "food"
      item.tax = (item.price * 0.1).round(2)
      end
    end
  end

  def calculate_duty
    @item_list.each do |item|
      if item.import
        item.duty = (item.price * 0.05).round(2)
      end
    end
  end

  def output
    
  end
end
