class Order
  attr_reader :order_list

  def initialize
    @order_list = Array.new
  end

  # def display
  #   puts "ORDER:"
  #   puts "TYPE:\tPRICE:\tIMPORT:\tQUANT:\tTAX:\tDUTY:\tDESCRIPTION:"
  #   @order_list.each do |item|
  #     puts "#{item.type}\t#{item.price}\t#{item.import}\t#{item.quantity}\t#{item.tax || '--'}\t#{item.duty || '--'}\t#{item.description}"
  #   end
  # end

  def display # added table_print gem to display in a nice table lol
    tp @order_list, :type, :price, :import, :quantity, :tax, :duty, :description
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
    else
      item.tax = 0
      end
    end
  end

  def calculate_duty
    @order_list.each do |item|
      if item.import
        item.duty = (item.price * 0.05).round(2)
      else
        item.duty = 0
      end
    end
  end

  def output
    total = 0
    sales_taxes = 0
    @order_list.each do |item|
      taxes = item.tax + item.duty
      final_price = item.price + taxes
      total += final_price
      sales_taxes += taxes
      puts "#{item.quantity} #{item.description}: #{"%.2f" %f = final_price.round(2)}"
    end
    puts "Sales Taxes: #{"%.2f" %f = sales_taxes.round(2)}"
    puts "Total: #{"%.2f" %f = total.round(2)}"

  end
end
