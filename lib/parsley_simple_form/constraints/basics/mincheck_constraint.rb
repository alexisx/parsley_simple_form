module ParsleySimpleForm
  module Constraints
    module Basics
      class MincheckConstraint < Constraints::BaseConstraint

        def match?
          return false if @options.nil?
          !@options[:mincheck].nil?
        end

        def html_attributes
          attributes = {
            :'parsley-mincheck' => @options[:mincheck],
            :'parsley-mincheck-message' => I18n::translate('form_validation.message.mincheck', mincheck: @options[:mincheck])
          }
          attributes.merge!({:'parsley-group' => @options[:check_group]}) unless @options[:check_group].nil?
          attributes
        end

      end
    end
  end
end
