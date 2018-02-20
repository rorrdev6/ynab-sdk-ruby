# -*- encoding: utf-8 -*-

=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

$:.push File.expand_path('../lib', __FILE__)
require 'ynab/version'

Gem::Specification.new do |s|
  s.name        = 'ynab'
  s.version     = YnabApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['You Need A Budget, LLC']
  s.email       = ['help@youneedabudget.com']
  s.homepage    = 'https://github.com/ynab/ynab-sdk-ruby'
  s.summary     = 'YNAB API Endpoints Ruby Gem'
  s.description = 'Ruby gem wrapper for the YNAB API. Read the documentation at https://api.youneedabudget.com'
  s.license     = 'Apache-2.0'
  s.required_ruby_version = '>= 1.9'

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
