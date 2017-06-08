class AdminController < ApplicationController
  # GET /tests
  def index
    @search = params[:search]
    if @search
      @tests = Test.search(@search)
    elsif params[:starts_with]
      @tests = Test.starts_with(params[:starts_with])
    else
      @tests = Test.all
    end

    @tests = @tests.order('procedure_name').page(params[:page]).per(25)
  end

  # GET /tests/1
  def show
    @test = Test.find(params[:id])
  end
  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
    @test = Test.find(params[:id])
  end

  # POST /tests
  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test, notice: 'Test was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tests/1
  def update
    @test = Test.find(params[:id])
    if @test.update(test_params)
      redirect_to @test, notice: 'Test was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tests/1
  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to tests_url, notice: 'Test was successfully destroyed.'
  end

end
