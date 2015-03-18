class StoresController < ApplicationController
  # before_action :set_stores, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Stores.all
    render :index
  end

  def show
    @store = Store.find(params[:id])
  end

end
