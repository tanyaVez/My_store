class ItemsController < ApplicationController
  def index
    #@items = Item.all
    #render text: @items.map {|i| "{i.name}: #{i.price}"}.join("<br/>")
  end

  def show
    @item = Item.find(params[:id])
    render "items/show"
  end

  def new
  end

  def edit
  end

  def create
    params.permit!
    @item = Item.create(params[:item])
    render text: "#{@item.id}: #{@item.name} #{!@item.new_record?}"
  end
end