class Activity
  attr_reader :name,
              :participants,
              :total_cost


  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
  end

  def add_participants(name, cost)
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
     # binding.pry
  end
end
