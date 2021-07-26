address = '255.100.50.0'

def defang_i_paddr(address)
  address.gsub('.', '[.]')
end

p defang_i_paddr(address)
