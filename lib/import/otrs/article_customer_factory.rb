module Import
  module OTRS
    module ArticleCustomerFactory
      extend Import::Factory

      def skip?(record)
        return true if record['SenderType'] != 'customer'
        return true if record['CreatedBy'].to_i != 1
        return true if record['From'].empty?
        false
      end
    end
  end
end
