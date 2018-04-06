require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_activity_has_name
    activity = Activity.new("hiking")
    assert_equal "hiking", activity.name
  end

  def test_activity_has_participants
    activity = Activity.new("hiking")
    assert_equal Hash.new, activity.participants
  end

  def test_can_add_participants_to_activity
    activity = Activity.new("hiking")
    activity.add_participants("Jo", 20)
    activity.add_participants("John", 10)
    expected = {"Jo" => 20, "John" => 10}
    assert_equal expected, activity.participants
  end

  def test_an_activity_has_total_cost
    activity = Activity.new("hiking")
    activity.add_participants("Jo", 20)
    assert_equal 20, activity.total_cost
  end

  def test_an_activity_has_total_cost
    activity = Activity.new("hiking")
    activity.add_participants("Jo", 20)
    activity.add_participants("Bill", 40)
    assert_equal 60, activity.total_cost
  end

  def test_can_split_the_cost_of_an_activity
    activity = Activity.new("hiking")
    activity.add_participants("Jo", 20)
    activity.add_participants("Bill", 40)
    assert_equal
  # end
end
