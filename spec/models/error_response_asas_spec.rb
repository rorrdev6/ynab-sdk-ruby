=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for YnabAPI::ErrorResponseAsas
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ErrorResponseAsas' do
  before do
    # run before each test
    @instance = YnabAPI::ErrorResponseAsas.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorResponseAsas' do
    it 'should create an instance of ErrorResponseAsas' do
      expect(@instance).to be_instance_of(YnabAPI::ErrorResponseAsas)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

