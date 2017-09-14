require 'test_helper'

class TeaItemTest < ActiveSupport::TestCase
  test "should not save without name" do
     ti = TeaItem.new
     assert_not ti.save
  end

  test "should not save without numeric price" do
     ti = TeaItem.new
     ti.name = "ti1"
     assert_not ti.save
  end

  test "should save with name and numeric price" do
     ti = TeaItem.new
     ti.name = "t1"
     ti.price = 1.5
     assert ti.save
  end
end
