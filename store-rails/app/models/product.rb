class Product < ActiveRecord::Base
  include Rhoconnectrb::Resource

  def partition
    lambda { "lars" }
  end

  def self.rhoconnect_query(partition, attributes = nil)
    Product.all
  end

  attr_accessible :brand, :name, :price, :quantity, :sku
end
