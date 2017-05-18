require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get tests_url
    assert_response :success
  end

  test "should get new" do
    get new_test_url
    assert_response :success
  end

  test "should create test" do
    assert_difference('Test.count') do
      post tests_url, params: { test: { category_code: @test.category_code, category_name: @test.category_name, collection_identifier: @test.collection_identifier, collection_instructions: @test.collection_instructions, collection_name: @test.collection_name, eppicare_inactive_flag: @test.eppicare_inactive_flag, orderable: @test.orderable, procedure_identifier: @test.procedure_identifier, procedure_master_number: @test.procedure_master_number, procedure_name: @test.procedure_name, process_identifier: @test.process_identifier, process_intructions: @test.process_intructions, process_name: @test.process_name, synonyms: @test.synonyms, test_code: @test.test_code } }
    end

    assert_redirected_to test_url(Test.last)
  end

  test "should show test" do
    get test_url(@test)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_url(@test)
    assert_response :success
  end

  test "should update test" do
    patch test_url(@test), params: { test: { category_code: @test.category_code, category_name: @test.category_name, collection_identifier: @test.collection_identifier, collection_instructions: @test.collection_instructions, collection_name: @test.collection_name, eppicare_inactive_flag: @test.eppicare_inactive_flag, orderable: @test.orderable, procedure_identifier: @test.procedure_identifier, procedure_master_number: @test.procedure_master_number, procedure_name: @test.procedure_name, process_identifier: @test.process_identifier, process_intructions: @test.process_intructions, process_name: @test.process_name, synonyms: @test.synonyms, test_code: @test.test_code } }
    assert_redirected_to test_url(@test)
  end

  test "should destroy test" do
    assert_difference('Test.count', -1) do
      delete test_url(@test)
    end

    assert_redirected_to tests_url
  end
end
