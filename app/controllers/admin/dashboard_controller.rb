class Admin::DashboardController < ApplicationController
  def show
    @product_count = Product.count
    @category_count = Category.count 
  end

  before_action :authenticate, only: [:show]

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "Jungle" && password == "book"
  end
end
end
