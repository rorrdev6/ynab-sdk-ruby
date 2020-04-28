=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module YNAB
  class CategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List categories
    # Returns all categories grouped by category group.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_knowledge_of_server The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included.
    # @return [CategoriesResponse]
    def get_categories(budget_id, opts = {})
      data, _status_code, _headers = get_categories_with_http_info(budget_id, opts)
      data
    end

    # List categories
    # Returns all categories grouped by category group.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_knowledge_of_server The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included.
    # @return [Array<(CategoriesResponse, Fixnum, Hash)>] CategoriesResponse data, response status code and response headers
    def get_categories_with_http_info(budget_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.get_categories ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling CategoriesApi.get_categories"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/categories'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'last_knowledge_of_server'] = opts[:'last_knowledge_of_server'] if !opts[:'last_knowledge_of_server'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CategoriesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#get_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Single category
    # Returns a single category.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param category_id The id of the category
    # @param [Hash] opts the optional parameters
    # @return [CategoryResponse]
    def get_category_by_id(budget_id, category_id, opts = {})
      data, _status_code, _headers = get_category_by_id_with_http_info(budget_id, category_id, opts)
      data
    end

    # Single category
    # Returns a single category.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param category_id The id of the category
    # @param [Hash] opts the optional parameters
    # @return [Array<(CategoryResponse, Fixnum, Hash)>] CategoryResponse data, response status code and response headers
    def get_category_by_id_with_http_info(budget_id, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.get_category_by_id ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling CategoriesApi.get_category_by_id"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoriesApi.get_category_by_id"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/categories/{category_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'category_id' + '}', category_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CategoryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#get_category_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Single category for a specific budget month
    # Returns a single category for a specific budget month.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param month The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC))
    # @param category_id The id of the category
    # @param [Hash] opts the optional parameters
    # @return [CategoryResponse]
    def get_month_category_by_id(budget_id, month, category_id, opts = {})
      data, _status_code, _headers = get_month_category_by_id_with_http_info(budget_id, month, category_id, opts)
      data
    end

    # Single category for a specific budget month
    # Returns a single category for a specific budget month.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param month The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC))
    # @param category_id The id of the category
    # @param [Hash] opts the optional parameters
    # @return [Array<(CategoryResponse, Fixnum, Hash)>] CategoryResponse data, response status code and response headers
    def get_month_category_by_id_with_http_info(budget_id, month, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.get_month_category_by_id ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling CategoriesApi.get_month_category_by_id"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling CategoriesApi.get_month_category_by_id"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoriesApi.get_month_category_by_id"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/months/{month}/categories/{category_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'month' + '}', month.to_s).sub('{' + 'category_id' + '}', category_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CategoryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#get_month_category_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a category for a specific month
    # Update a category for a specific month.  Only `budgeted` amount can be updated.
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param month The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC))
    # @param category_id The id of the category
    # @param data The category to update.  Only &#x60;budgeted&#x60; amount can be updated and any other fields specified will be ignored.
    # @param [Hash] opts the optional parameters
    # @return [SaveCategoryResponse]
    def update_month_category(budget_id, month, category_id, data, opts = {})
      data, _status_code, _headers = update_month_category_with_http_info(budget_id, month, category_id, data, opts)
      data
    end

    # Update a category for a specific month
    # Update a category for a specific month.  Only &#x60;budgeted&#x60; amount can be updated.
    # @param budget_id The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
    # @param month The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC))
    # @param category_id The id of the category
    # @param data The category to update.  Only &#x60;budgeted&#x60; amount can be updated and any other fields specified will be ignored.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SaveCategoryResponse, Fixnum, Hash)>] SaveCategoryResponse data, response status code and response headers
    def update_month_category_with_http_info(budget_id, month, category_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.update_month_category ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling CategoriesApi.update_month_category"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling CategoriesApi.update_month_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoriesApi.update_month_category"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling CategoriesApi.update_month_category"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/months/{month}/categories/{category_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'month' + '}', month.to_s).sub('{' + 'category_id' + '}', category_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(data)
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveCategoryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#update_month_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
