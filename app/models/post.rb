class Post < ApplicationRecord
  belongs_to :category

  def category_name
    category.try(:name)
  end

  def category_name=(name)
    self.category = Category.find_by!(name: name) unless name.blank?
  end

  validates :title, :content, presence: true
  validates :title, length: { minimum: 2 }
  validates :title, uniqueness: true
  paginates_per 5

end
