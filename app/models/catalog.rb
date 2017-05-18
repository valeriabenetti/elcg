class Catalog < ApplicationRecord
  # GET /catalog
  def index
    @catalog = Catalog.all

    @catalog = @catalog.page(params[:page]).per(50)
  end

  # GET /catalog/1
  def show
    @catalog = Catalog.find(params[:id])
  end

  # GET /catalogs/new
  def new
    @catalog = Catalog.new
  end

  # GET /catalogs/1/edit
  def edit
    @catalog = Catalog.find(params[:id])

    if @catalog.user != current_user
      redirect_to catalogs_path
    end
  end

  # POST /catalogs
  def create
    @catalog = Catalog.new(catalog_params)
    @catalog.user = current_user

    if @catalog.save
      redirect_to @catalog, notice: 'catalog was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /catalogs/1
  def update
    @catalog = Catalog.find(params[:id])
    if @catalog.user != current_user
      redirect_to catalogs_path
      return
    end
    if @catalog.update(catalog_params)
      redirect_to @catalog, notice: 'catalog was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /catalogs/1
  def destroy
    @catalog = Catalog.find(params[:id])
    if @catalog.user != current_user
      redirect_to catalogs_path
      return
    end
    @catalog.destroy
    redirect_to catalogs_url, notice: 'catalog was successfully destroyed.'
  end
end
