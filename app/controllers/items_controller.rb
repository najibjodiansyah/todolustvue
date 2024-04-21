class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def create
    item = Item.create(resource_params)
    render json: item
  end

  private

  def resource_params
    params.require(:item).permit(:name)
  end
end