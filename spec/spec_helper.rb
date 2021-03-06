require 'stringio'
require 'simplecov'
require 'tryruby'

Dir['./spec/support/**/*.rb'].each { |file| require file }

RSpec.configure do |c|

  # rspec-expectations config
  c.expect_with :rspec do |expects|

    # This option disables deprecated 'should' syntax.
    expects.syntax = :expect

    # This option makes the +description+ and +failure_message+ of custom
    # matchers include text for helper methods defined using +chain+, e.g.:
    # be_bigger_than(2).and_smaller_than(4).description
    #   # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #   # => "be bigger than 2"
    expects.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config
  c.mock_with :rspec do |mocks|

    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object.
    mocks.verify_partial_doubles = true
  end

  c.color = true
  c.formatter = :documentation
  c.tty = true
end
