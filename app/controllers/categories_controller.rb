class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @categories.map(&:name)
  end

end
