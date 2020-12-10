module RSpec
  module Rails
    # @private
    # In Rails 6.1 some methods from ActiveSupport::Testcase
    # has been moved to ActiveSupport::Testing::Assertion.
    # Few of them are required in different scenarios.
    module ActiveSupportTestingAssertion
      def assert_nothing_raised(&block)
        expect(&block).to_not raise_error
      end
    end
  end
end
