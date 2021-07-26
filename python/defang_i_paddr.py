address = "255.100.50.0"

def defangIPaddr(address):
  return address.replace('.', '[.]')



print(defangIPaddr(address))