s = 'gdJL3 qZVrDtrdt4 hNbOybAYKc1 IPUpNYOFYdFbP2'

def sort_sentence(s)
  s.split(' ').sort_by { |word| word[-1] }.join(' ').gsub(/\d+/, '')
end

p sort_sentence(s)
