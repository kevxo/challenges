class ParkingSystem
  def initialize(big, medium, small)
    # code
    @big = big
    @medium = medium
    @small = small
  end

  def add_car(car_type)
    if car_type == 1 && @big.positive?
      @big -= 1
      true
    elsif car_type == 2 && @medium.positive?
      @medium -= 1
      true
    elsif car_type == 3 && @small.positive?
      @small -= 1
      true
    else
      false
    end
  end
end

parking_system = ParkingSystem.new(1, 1, 0)
p parking_system.add_car(1)
p parking_system.add_car(2)
p parking_system.add_car(3)
p parking_system.add_car(1)
