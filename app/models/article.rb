class Article < ApplicationRecord
  has_many_attached :images

  def self.order_by_date
    all.order("date desc")
  end
end
