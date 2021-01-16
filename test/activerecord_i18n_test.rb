require 'test_helper'

class ActiverecordI18n::Test < ActiveSupport::TestCase
  test "get_item allow the default_value to be nil" do
    result = ActiverecordI18n.get_item('abc')
    assert_equal(result, "")
  end
end
