module RSpec::Rails
  RSpec.describe ActiveSupportTestingAssertion do
    it 'assert_nothing_raised is not undefined' do
      expect {
        assert_nothing_raised do
          :foo
        end
      }.to_not raise_error
    end
  end
end
