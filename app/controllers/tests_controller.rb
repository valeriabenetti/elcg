class TestsController < ApplicationController
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

  def favorite
    test = Test.find(params[:id])

    Favorite.create(test: test, user: current_user)

    Rails.logger.info "Bookmarking Test #{test.procedure_name}"
  end

  def unfavorite
    test = Test.find(params[:id])

    favorite = Favorite.find_by(test: test, user: current_user)
    favorite.destroy

    Rails.logger.info "Un-Bookmarking Test #{test.procedure_name}"
  end

  private

  # Only allow a trusted parameter "white list" through.
  def test_params
    params.require(:test).permit(:procedure_identifier, :procedure_name, :procedure_master_number, :synonyms, :test_code, :category_code, :category_name, :eppicare_inactive_flag, :orderable, :collection_identifier, :collection_name, :collection_instructions, :process_identifier, :process_name, :process_intructions)
  end
end
