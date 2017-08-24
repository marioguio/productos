class ProductsController < ApplicationController
  def index
   @productos = Product.all
 end
 def new
   @producto = Product.new
 end

def create
  @producto = Product.new(product_params)
  if @producto.save
   redirect_to products_path
  else
    render :new
  end
end

def edit
  @producto = Product.find(params[:id])
end

def update
  @producto = Product.find(params[:id])
  if @producto.update(product_params)
    redirect_to products_path
  else
    render :edit
  end
end

def destroy
  @producto = Product.find(params[:id])
  @producto.destroy

  redirect_to products_path
end


private

 def product_params
   params.require(:product).permit(:name, :price, category_ids: [])
 end
end
