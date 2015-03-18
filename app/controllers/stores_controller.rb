class StoresController < ApplicationController
  # before_action :set_stores, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def show
    @store = Store.find(params[:id])
  end

  def create
    @store = Store.new(params[:store])
    if @store.save
      flash[:notice] = "Store created successfully"
      redirect_to stores_path
    else
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if $store.update(params[:store])
      redirect_to stores_path
    else
      render :edit
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end

private
  def store_params
    params.require(:store).permit(:title, :image)
  end
end
