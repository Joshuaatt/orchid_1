class ProductsController < ApplicationController
  def new
    @store = Store.find(params[:store_id])
    @product = @store.products.new
  end

  def create
    @store = Store.find(params[:store_id])
    @product = @store.products.new(product_params)
    if @product.save
      flash[:notice] = "Product added successfully"
      redirect_to store_path(@product.store)
    else
      render :new
    end
  end

  def destroy
    @store = Store.find(params[:store_id])
    @product = @store.products.find(params[:id])
    if @product.destroy
      flash[:notice] = "This product has been deleted successfully"
    else
      flash[:error] = "This product was NOT deleted successfully"
    end
    redirect_to store_path
  end

private
  def product_params
    params.require(:product).permit(:product_name)
  end
end
