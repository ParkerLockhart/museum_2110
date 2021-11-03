require './lib/exhibit'
require './lib/patron'

class Museum
  attr_reader :name
  attr_accessor :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommend_exhibits = []
    patron.interests.each do |interest|
      exhibits.find_all do |exhibit|
        if exhibit.name == interest
          recommend_exhibits << exhibit
        end 
      end
    end
    recommend_exhibits
  end
end
