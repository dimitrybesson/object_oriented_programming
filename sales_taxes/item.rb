class Item
  attr_accessor :type, :price, :import, :description, :quantity, :tax, :duty

  def initialize(attributes = {})
    @type = attributes[:type]
    @price = attributes[:price]
    @import = attributes[:import]
    @description = attributes[:description]
    @quantity = attributes[:quantity] || 1
    if attributes[:inventory]
      attributes[:inventory].inventory_list << self
    end #if inventory is specified, push item into inventory_list. note: inventory should always be specified, is there a way that I can make this manditory???
    #attributes[:order].order_list << self #if an order is specified, push item into order_list
  end
end
