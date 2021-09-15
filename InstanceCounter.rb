module InstanceCounter
  @@number_of_objects = 0
  def initialize
    @@number_of_objects +=1
  end

  def self.total_number_of_objects
    @@number_of_objects
  end

  protected
  attr_reader :instances
  @instances = 0
  def register_instance
    @instances += 1
    puts "Количество экземпляров класса #{@instances}"
  end
end
