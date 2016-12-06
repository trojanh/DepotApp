class Product < ActiveRecord::Base

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title,:description,:price,:image_url,presence: true
  validates :price, numericality: {greater_than_or_equal_to:0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be gif or jpg or png image'
  }

  def self.latest
    Product.order(:updated_at).last
  end

  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        return false
      end
    end
end
