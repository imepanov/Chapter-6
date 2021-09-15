require_relative 'InstanceCounter'

class Station
  class << self
  include InstanceCounter
  @@all_stations = []
  def self.all_stations
    @@all_stations.each { |stations| puts stations }
  end
  attr_reader :type, :trains, :name, :stations, :start, :finish, :current_index, :next_station, :previous_station
  def initialize(name)  #  все методы дожны быть public
    @name = name
    @trains = []
    self.register_instance
  end

  def arrived(train)
    @trains << train
  end

  def left(train)
    @trains.delete(train)
  end
  end
end
