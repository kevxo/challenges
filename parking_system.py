class ParkingSystem:
  def __init__(self, big, medium, small):
    self.big = big
    self.medium = medium
    self.small = small

  def addCar(self, car_type):
    if car_type == 1 and self.big > 0:
      self.big -= 1
      return True
    elif car_type == 2 and self.medium > 0:
      self.medium -= 1
      return True
    elif car_type == 3 and self.small > 0:
      self.small -= 1
      return True
    else:
      return False


parking_system = ParkingSystem(1, 1, 0)
print(parking_system.addCar(1))
print(parking_system.addCar(2))
print(parking_system.addCar(3))
print(parking_system.addCar(1))
