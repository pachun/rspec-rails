require 'rails_helper'

class SomeClass; end

RSpec.describe 'Example App' do
  it "does not have ActiveRecord defined" do
    expect(defined?(ActiveRecord)).not_to be
  end

  it "does not crash on Rails 6.1.0", issue: 2417 do
    SomeClass.new
  end
end
