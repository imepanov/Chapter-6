require_relative 'Manufacturer'
class Carriage
  include Manufacturer
  attr_reader :type, :number

  def initialize(number, type)
    @number = number
    @type = type
  end
end