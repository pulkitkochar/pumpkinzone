class Product < ActiveRecord::Base
  has_many :order_items
  has_many :product_variants
  belongs_to :category

  default_scope { where(active: true) }

  def as_json
    {
        id: id,
        name: name
    }
  end
end