class TestsController < ApplicationController
  # GET /tests
  def index
    @tests = Test.all
  end

  # GET /tests/1
  def show
    @test = Test.find(params[:id])
  end

  private

  # Only allow a trusted parameter "white list" through.
  def test_params
    params.require(:test).permit(:id, :procedure_identifier, :procedure_name, :procedure_master_number, :synonyms, :test_code, :category_code, :category_name, :eppicare_inactive_flag, :orderable, :collection_identifier, :collection_name, :collection_instructions, :process_identifier, :process_name, :process_intructions)
  end
end
