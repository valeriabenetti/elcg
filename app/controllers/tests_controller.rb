class TestsController < ApplicationController
  # GET /tests
  def index
    if params[:search]
      @tests = Test.search(params[:search])
    elsif params[:letter]
      @tests = Test.starts_with(params[:letter])
    else
      @tests = Test.all
    end

    @tests = @tests.order('procedure_name').page(params[:page]).per(50)
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

  private

  # Only allow a trusted parameter "white list" through.
  def test_params
    params.require(:test).permit(:procedure_identifier, :procedure_name, :procedure_master_number, :synonyms, :test_code, :category_code, :category_name, :eppicare_inactive_flag, :orderable, :collection_identifier, :collection_name, :collection_instructions, :process_identifier, :process_name, :process_intructions)
  end
end
