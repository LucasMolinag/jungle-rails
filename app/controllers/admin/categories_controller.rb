class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end
  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end

  before_action :authenticate, only: [:new, :create, :index] # Specify the actions that require authentication

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "Jungle" && password == "book"
    end
end
end