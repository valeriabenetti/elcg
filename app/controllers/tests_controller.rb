class TestsController < ApplicationController
  # GET /tests
  def index
    @tests = Test.all
  end

  # GET /tests/1
  def show
    @test = Test.find(params[:id])
  end
end
