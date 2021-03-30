=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module YNAB
  class ScheduledTransactionSummary
    attr_accessor :id

    # The first date for which the Scheduled Transaction was scheduled.
    attr_accessor :date_first

    # The next date for which the Scheduled Transaction is scheduled.
    attr_accessor :date_next

    attr_accessor :frequency

    # The scheduled transaction amount in milliunits format
    attr_accessor :amount

    attr_accessor :memo

    # The scheduled transaction flag
    attr_accessor :flag_color

    attr_accessor :account_id

    attr_accessor :payee_id

    attr_accessor :category_id

    # If a transfer, the account_id which the scheduled transaction transfers to
    attr_accessor :transfer_account_id

    # Whether or not the scheduled transaction has been deleted.  Deleted scheduled transactions will only be included in delta requests.
    attr_accessor :deleted

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'date_first' => :'date_first',
        :'date_next' => :'date_next',
        :'frequency' => :'frequency',
        :'amount' => :'amount',
        :'memo' => :'memo',
        :'flag_color' => :'flag_color',
        :'account_id' => :'account_id',
        :'payee_id' => :'payee_id',
        :'category_id' => :'category_id',
        :'transfer_account_id' => :'transfer_account_id',
        :'deleted' => :'deleted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'date_first' => :'Date',
        :'date_next' => :'Date',
        :'frequency' => :'String',
        :'amount' => :'Integer',
        :'memo' => :'String',
        :'flag_color' => :'String',
        :'account_id' => :'String',
        :'payee_id' => :'String',
        :'category_id' => :'String',
        :'transfer_account_id' => :'String',
        :'deleted' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'date_first')
        self.date_first = attributes[:'date_first']
      end

      if attributes.has_key?(:'date_next')
        self.date_next = attributes[:'date_next']
      end

      if attributes.has_key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.has_key?(:'flag_color')
        self.flag_color = attributes[:'flag_color']
      end

      if attributes.has_key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.has_key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.has_key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.has_key?(:'transfer_account_id')
        self.transfer_account_id = attributes[:'transfer_account_id']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @date_first.nil?
        invalid_properties.push('invalid value for "date_first", date_first cannot be nil.')
      end

      if @date_next.nil?
        invalid_properties.push('invalid value for "date_next", date_next cannot be nil.')
      end

      if @frequency.nil?
        invalid_properties.push('invalid value for "frequency", frequency cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @deleted.nil?
        invalid_properties.push('invalid value for "deleted", deleted cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @date_first.nil?
      return false if @date_next.nil?
      return false if @frequency.nil?
      frequency_validator = EnumAttributeValidator.new('String', ['never', 'daily', 'weekly', 'everyOtherWeek', 'twiceAMonth', 'every4Weeks', 'monthly', 'everyOtherMonth', 'every3Months', 'every4Months', 'twiceAYear', 'yearly', 'everyOtherYear'])
      return false unless frequency_validator.valid?(@frequency)
      return false if @amount.nil?
      flag_color_validator = EnumAttributeValidator.new('String', ['red', 'orange', 'yellow', 'green', 'blue', 'purple'])
      return false unless flag_color_validator.valid?(@flag_color)
      return false if @account_id.nil?
      return false if @deleted.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(frequency)
      @frequency = frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flag_color Object to be assigned
    def flag_color=(flag_color)
      @flag_color = flag_color
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          date_first == o.date_first &&
          date_next == o.date_next &&
          frequency == o.frequency &&
          amount == o.amount &&
          memo == o.memo &&
          flag_color == o.flag_color &&
          account_id == o.account_id &&
          payee_id == o.payee_id &&
          category_id == o.category_id &&
          transfer_account_id == o.transfer_account_id &&
          deleted == o.deleted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, date_first, date_next, frequency, amount, memo, flag_color, account_id, payee_id, category_id, transfer_account_id, deleted].hash
    end
    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = YNAB.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
