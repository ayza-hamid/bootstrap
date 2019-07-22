class Category < ApplicationRecord
  has_many :posts, dependent: :destroy

  def self.search(term)
    @categories = Category.order(:name).where("name like ?", "%#{params[:search]}%")
  end
end
