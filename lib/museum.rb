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
end
