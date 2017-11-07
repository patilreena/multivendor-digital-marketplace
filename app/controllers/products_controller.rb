class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
 
 def index
    # @products = Product.all
   if params[:search]
     @products = Product.search(params[:search]).order("created_at DESC")
     puts "-----#{@products.inspect}"
   else
     @products = Product.all.order("created_at DESC")
   end

  end

 

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
    @ratings = @product.ratings.includes(:user).all
    @images = @product.images
    @rating  = @product.ratings.build(user_id: current_user.id) if current_user
  end

  def download
    @product = Product.find(params[:product_id])
    redirect_to @product.asset.expiring_url(10)
    return
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save

        if params[:images]
          params[:images].each { |image|
            @product.images.create(image: image)
          }
        end
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
   def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :long_description, :price, :commision, :status, :created_by, :is_deleted, :is_active, :sku, :asset, :thumbnail, :images, :preview_url)
    end
end
