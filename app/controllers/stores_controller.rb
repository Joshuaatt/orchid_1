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

end
