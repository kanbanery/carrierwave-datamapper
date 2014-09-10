module CarrierWave
  module DataMapper
    module Property
      class Uploader < ::DataMapper::Property::Text

        lazy false

        def custom?
          true
        end

        def initialize(model, name, options = {})
          if ::DataMapper.const_defined?(:Validations)
            options[:auto_validation] = false
          end

          super
        end
      end
    end # Property
  end # DataMapper
end # CarrierWave
