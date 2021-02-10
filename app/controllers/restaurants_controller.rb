class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  # GET /restaurants/
  def index
    @restaurants = Restaurant.all
  end # render "index.html.erb"

  # GET /restaurants/:id
  # ex: /restaurants/4
  def show
  end # render "show.html.erb"

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end # render "new.html.erb"

  # POST /restaurants/
  # {"restaurant"=>{"name"=>"Garfield", "address"=>"Lyon", "species"=>"cat", "found_on"=>"2021-02-08"}}
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end # No Render ! We have to redirect somewhere else

  # GET /restaurants/:id/edit
  def edit
  end # render "edit.html.erb"

  # PATCH /restaurants/:id
  # {"id" => "34", "restaurant"=>{"name"=>"Garfield", "address"=>"Lyon", "species"=>"cat", "found_on"=>"2021-02-08"}}
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end # No render !

  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
