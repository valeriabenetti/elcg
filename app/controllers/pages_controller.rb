class PagesController < ApplicationController
  def landing
    @tests = Test.all

    def show
      @test = Test.find(params[:id])
    end
  end
end
