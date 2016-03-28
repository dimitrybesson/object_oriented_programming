class Order
  attr_reader :order_list

  def initialize
    @order_list = Array.new
  end

  def display
    puts "ORDER:"
    puts "TYPE:\tPRICE:\tIMPORT:\tQUANT:\tTAX:\tDUTY:\tDESCRIPTION:"
    @order_list.each do |item|
      puts "#{item.type}\t#{item.price}\t#{item.import}\t#{item.quantity}\t#{item.tax || '--'}\t#{item.duty || '--'}\t#{item.description}"
    end
  end

  def add_items(*items)
    items.each do |item|
      @order_list << item
    end
  end

  def calculate_tax
    @order_list.each do |item|
      unless item.type == "book" || item.type == "medical" || item.type == "food"
      item.tax = (item.price * 0.1).round(2)
      end
    end
  end

  def calculate_duty
    @order_list.each do |item|
      if item.import
        item.duty = (item.price * 0.05).round(2)
      end
    end
  end

  def output

  end
end
